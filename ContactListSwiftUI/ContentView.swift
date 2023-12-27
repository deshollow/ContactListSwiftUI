//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by deshollow on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contact List")
                }
            NumbersListView()
                .tabItem {
                Image(systemName: "phone.fill")
                Text("Numbers")
            }
        }
    }
}

#Preview {
    ContentView()
}
