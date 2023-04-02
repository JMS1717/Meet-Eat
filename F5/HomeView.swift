//
//  HomeView.swift
//  F5
//
//  Created by Ryan Nair on 4/1/23.
//

import SwiftUI

enum DiningHall: String, CaseIterable, Identifiable, Codable {
    case north, east, south, west, pollock
    var id: Self { self }
}

struct HomeView: View {
    @AppStorage("userName") private var name: String = ""
    
    private var greeting: String {
        let hour = Calendar.current.component(.hour, from: .now)
        name = CFPreferencesCopyAppValue("userName" as CFString, kCFPreferencesCurrentApplication) as? String ?? ""
        switch hour {
            case 5..<12:
                return "Good Morning, \(name)"
            case 12..<17:
                return "Good Afternoon, \(name)"
            default:
                return "Good Evening, \(name)"
        }
    }
    
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .indigo]), startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea(edges: .top)
                
                VStack(spacing: 20.0) {
                    Text(greeting).font(.custom("STHeitiSC-Light", fixedSize: 40))
                        .foregroundColor(.white)
                    
                    
                    Text("I'm eating at:").font(.custom("STHeitiSC-Light", fixedSize: 45))
                        .foregroundColor(.white)
                    
                    ForEach(DiningHall.allCases) { hall in
                        NavigationLink(destination: SelectionView(selectedHall: hall)) {
                            Text(hall.rawValue.capitalized)
                                .frame(maxWidth: 200, maxHeight: 30)
                                .padding()
                                .foregroundColor(.black)
                                .background(.white)
                                .cornerRadius(50)
                                .font(.system(size: 40))
                        }
                    }
                }
            }
        }
        .tint(.white)
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
