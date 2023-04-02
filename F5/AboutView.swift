//
//  AboutView.swift
//  F5
//
//  Created by Ryan Nair on 4/2/23.
//

import SwiftUI

import SwiftUI

struct AboutLabelView: View {

    let labelTitle: String
    let labelImage: String

    var body: some View {
        HStack {
            Text(labelTitle.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct AboutRowView: View {

    let title: String
    let content: String
    var linkDestination: String?

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title).foregroundColor(.secondary)
                Spacer()
                if let linkDestination, let url = URL(string: linkDestination) {
                    Link(destination: url) {
                        Text(content)
                    }
                } else {
                    Text(content)
                }
            }
        }
    }
}

struct AboutView: View {
    @AppStorage("customTintColor") private var storedColor = 0

    var body: some View {
        ScrollView {
            HStack {
                 Spacer()
                 VStack {
                     Spacer(minLength: 30)

                     LogoView()
                         .frame(width: 165, height: 200)
                 }
                 Spacer()
             }
             .background(Color(.displayP3, red: 0.12, green: 0.25, blue: 0.49, opacity: 1))
             .cornerRadius(20)

            VStack(spacing: 20) {
                GroupBox {
                    Divider().padding(.vertical, 4)
                    HStack(alignment: .center, spacing: 10) {
                        Image("meetAndEat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)

                        Text("Meet & Eat is an app that matches students with other students who are planning to eat at the same dining hall and time. Our simple, intuitive UI system enables students with similar interests who would have otherwise never crossed paths to share a meal and ideas, and keeps students from eating alone.")
                            .font(.footnote)
                            .padding()
                    }
                } label: {
                    AboutLabelView(labelTitle: "Meet & Eat", labelImage: "info.circle")
                }

                GroupBox {
                    AboutRowView(title: "Developed by", content: "Ryan Nair, Andrew Hill, Asa Reynolds, Jason Selsley")
                    AboutRowView(title: "GitHub", content: "Meet & Eat", linkDestination: "https://github.com/JMS1717/Meet-Eat")
                    AboutRowView(title: "Email Support", content: "ryannairtweaks@gmail.com", linkDestination: "mailto:ryannairtweaks@gmail.com")
                    AboutRowView(title: "Version", content: "1.0.0")
                    VStack {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Text("Tint Color").foregroundColor(.secondary)
                            Spacer()
                            Picker("", selection: $storedColor, content: {
                                   Text("Red").tag(4)
                                   Text("Orange").tag(1)
                                   Text("Green").tag(2)
                                   Text("Teal").tag(3)
                                   Text("Blue").tag(0)
                                   Text("Purple").tag(5)
                                   Text("Indigo").tag(6)
                               })
                           .onChange(of: storedColor, perform: { _ in
                               swizzleCustomTintColor()
                           })
                        }
                    }
                    Divider().padding(.vertical, 4)
                    
                    Button("Reset Preferences") {
                        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier.unsafelyUnwrapped)
                    }
                } label: {
                    AboutLabelView(labelTitle: "Application", labelImage: "apps.iphone")
                }
            }
        }
        .padding()
        .navigationTitle(Text("About"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
