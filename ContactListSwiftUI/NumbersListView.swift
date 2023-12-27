//
//  NumbersListView.swift
//  ContactListSwiftUI
//
//  Created by deshollow on 27.12.2023.
//

import SwiftUI

struct NumbersListView: View {
    
    private var numbersInfo = Person.getPersonData()
    
    var body: some View {
        NavigationStack {
            List(numbersInfo) { info in
                Section {
                    HStack {
                        Image(systemName: "phone")
                        Text(info.phone)
                    }
                    HStack {
                        Image(systemName: "mail")
                        Text(info.email)
                    }
                } header: {
                    Text(info.name + " " + info.surname)
                }
            }
            .navigationTitle("Contact List")
        }
        .listStyle(.plain)
    }
}

#Preview {
    NumbersListView()
}
