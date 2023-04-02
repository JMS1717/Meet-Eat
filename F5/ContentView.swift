//
//  ContentView.swift
//  F5
//
//  Created by Ryan Nair on 4/1/23.
//

import SwiftUI
import ConcentricOnboarding

let firstTime = true

enum Gender: String, CaseIterable, Identifiable {
    case male, female, other
    var id: Self { self }
}

struct NameInputView: View {
    @AppStorage("userName") private var name: String = ""
    @FocusState private var isFocused: Bool

    var body: some View {
        return VStack(alignment: .center, spacing: 50) {
            Text("Welcome")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 350)
                .multilineTextAlignment(.center)
            VStack(alignment: .center, spacing: 5) {
                Text("Please enter your name:")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center)
                
                 TextField("", text: $name)
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center)
                    .focused($isFocused)
                    .onAppear {
                        isFocused = true
                    }
            }
        }
    }
}

struct GenderView: View {
    @State private var selectedGender: Gender = .male
    
    var body: some View {
        return VStack(alignment: .center, spacing: 50) {
            Text("Please select your gender")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 350)
                .multilineTextAlignment(.center)
            VStack(alignment: .center, spacing: 5) {
                Picker("Flavor", selection: $selectedGender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                    Text("Other").tag(Gender.other)
                }
                .pickerStyle(.segmented)
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct PageData {
    let content: AnyView
    let color: Color
}

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Welcome")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 350)
                .multilineTextAlignment(.center)
            VStack(alignment: .center, spacing: 5) {
                Text("Click the button below to continue")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct MockData {
    static let pages: [PageData] = [
        PageData(content: AnyView(WelcomeView()), color: Color(red: 0, green: 0.12, blue: 0.27)),
        PageData(content: AnyView(NameInputView()), color: Color(red: 0.12, green: 0.25, blue: 0.49)),
        PageData(content: AnyView(GenderView()), color: Color(red: 0, green: 0.61, blue: 0.87)),
        PageData(content: AnyView(ProfilePicInputView()), color: Color(red: 0.24, green: 0.64, blue: 0.62))
    ]
}

struct ContentView: View {
    @AppStorage("hasLaunched") private var hasLaunched: Bool = false
    
    var body: some View {
        ZStack {
            if hasLaunched {
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "location")
                        }
                        AboutView()
                        .tabItem {
                                   Label("About", systemImage: "gear")
                       }
                }
                .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing).combined(with: .opacity), removal: AnyTransition.move(edge: .leading).combined(with: .opacity)))
            } else {
                ConcentricOnboardingView(pageContents: MockData.pages.map { ($0.content, $0.color) })
                    .duration(1.0)
                    .nextIcon("chevron.forward")
                    .insteadOfCyclingToFirstPage {
                        withAnimation {
                            hasLaunched = true
                        }
                    }
            }
        }
        .background(Color(red: 0.24, green: 0.64, blue: 0.62))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
