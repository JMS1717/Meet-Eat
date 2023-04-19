//
//  SelectionView.swift
//  F5
//
//  Created by Ryan Nair on 4/1/23.
//

import SwiftUI
import FirebaseDatabase
import ConfettiSwiftUI
import ActionButton

struct Person: Identifiable, Codable, Hashable {
    var dining: String
    var gender: String
    var imageurl: String
    var id: Int
    var interests: [String]
    var name: String
    var phone: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }
}

final class PersonViewModel: ObservableObject {
    @Published var persons: [Person] = []
    
    private lazy var databasePath: DatabaseReference? = {
        let ref = Database.database().reference().child("data")
        return ref
    }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func listentoRealtimeDatabase() {
        guard let databasePath = databasePath else {
            return
        }
        databasePath
            .observe(.childAdded) { [weak self] snapshot in
                guard let self = self, var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                if let id = Int(snapshot.key) {
                    json["id"] = id
                }
                do {
                    let personData = try JSONSerialization.data(withJSONObject: json)
                    let person = try self.decoder.decode(Person.self, from: personData)
                    self.persons.append(person)
                } catch {
                    print("an error occurred", error)
                }
            }
    }

    
    func stopListening() {
        databasePath?.removeAllObservers()
    }
}

struct SelectionView: View {
    var selectedHall: DiningHall
    @State private var date = Date()
    @State private var showSelectedPerson = 0
    @State private var letsEat: ActionButtonState = .enabled(title: "Let's eat!", systemImage: "fork.knife")
    @State private var reRoll: ActionButtonState = .enabled(title: "Reroll", systemImage: "arrow.counterclockwise")
    @State private var continueButton: ActionButtonState = .enabled(title: "Continue", systemImage: "arrow.foward")
    @StateObject private var viewModel = PersonViewModel()
    @State private var shownPersons: Set<Person> = []
    @State private var match: Person? = nil
    
    private var filteredPersons: [Person] {
        viewModel.persons.filter { $0.dining.lowercased() == selectedHall.rawValue }
    }

    private var randomPerson: Person? {
        let availablePersons = Set(filteredPersons).subtracting(shownPersons)
        guard !availablePersons.isEmpty else {
            return nil
        }
        let index = Int.random(in: 0..<availablePersons.count)
        let person = availablePersons[availablePersons.index(availablePersons.startIndex, offsetBy: index)]

        return person
    }
    
    let dateRange: ClosedRange<Date> = {
        let today = Date()

        // Start of the day (midnight)
        let startOfDay = Calendar.current.startOfDay(for: today)

        // End of the day (11:59:59 PM)
        let endOfDay = Calendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: startOfDay).unsafelyUnwrapped

        // Closed range of the current day
        return startOfDay...endOfDay
    }()
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .indigo]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            if showSelectedPerson == 1 {
                VStack(spacing: 20) {
                    AsyncImage(url: URL(string: match.unsafelyUnwrapped.imageurl))
                    
                    Text("Name: \(match.unsafelyUnwrapped.name)")
                    Text("Gender: \(match.unsafelyUnwrapped.gender)")
                    Text("Phone Number: \(match.unsafelyUnwrapped.phone)")
                    Text("Interests \(match.unsafelyUnwrapped.interests.joined(separator: " "))")
                }
            }
            else if let match {
                VStack(spacing: 10) {
                    if let randomPerson {
                        AsyncImage(url: URL(string: match.imageurl))
                            .scaleEffect(0.75)
                        
                        Text("Name: \(match.name)")
                        Text("Gender: \(match.gender)")
                        Text("Interests: \(match.interests.joined(separator: " "))")
                     
                        ActionButton(state: $letsEat, onTap: {
                            letsEat = .loading(title: "Waiting For User", systemImage: "bolt")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                showSelectedPerson = 1
                            }
                        }, backgroundColor: .blue)
                        .frame(maxWidth: 250)
                                
                        ActionButton(state: $reRoll, onTap: {
                            reRoll = .loading(title: "Finding Someone", systemImage: "bolt")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                self.match = randomPerson
                                reRoll = .enabled(title: "Reroll", systemImage: "arrow.counterclockwise")
                            }
                        }, backgroundColor: .blue)
                        .frame(maxWidth: 250)
                        .onChange(of: match) { newPerson in
                            shownPersons.insert(newPerson)
                        }
                   } else {
                       Text("No more people available")
                   }
                }
            }
            else if shownPersons.isEmpty {
                VStack {
                    Text("What time would you like to eat at \(selectedHall.rawValue.capitalized)?")
                        .font(.custom("STHeitiSC-Light", fixedSize: 35))
                        .foregroundColor(.white)
                        .padding(.all)
                    
                    DatePicker(
                            "",
                             selection: $date,
                             in: dateRange,
                            displayedComponents: [.hourAndMinute]
                        )
                    .offset(x: -33, y: 0)
                    .frame(maxHeight: .infinity)
                    .datePickerStyle(.wheel)
                    .colorInvert()
                    
                    ActionButton(state: $continueButton, onTap: {
                        continueButton = .loading(title: "Loading", systemImage: "bolt")
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            match = randomPerson
                        }
                    }, backgroundColor: .teal)
//                    .colorInvert()
                    .frame(maxWidth: 250)
                }
            }
            else {
                Text("You are all out of people!").foregroundColor(.white)
            }
        }
        
        .onAppear {
            viewModel.listentoRealtimeDatabase()
        }
        .onDisappear {
            viewModel.stopListening()
        }
        .confettiCannon(counter: $showSelectedPerson, num: 40, confettiSize: 15, rainHeight: 1500, radius: 500)
        .foregroundColor(.white)
    }
    
}
