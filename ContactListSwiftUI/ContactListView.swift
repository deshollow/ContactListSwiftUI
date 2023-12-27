//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by deshollow on 27.12.2023.
//

import SwiftUI

struct ContactListView: View {
    
    private var personInfo = Person.getPersonData()
    
    var body: some View {
        
        NavigationStack {
            
            List(personInfo) { person in
                NavigationLink(
                    destination: ContactDetailsView(info: Person(
                        name: person.name,
                        surname: person.surname,
                        phone: person.phone,
                        email: person.email)))
                {
                    Text(person.name + " " + person.surname)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView()
}
