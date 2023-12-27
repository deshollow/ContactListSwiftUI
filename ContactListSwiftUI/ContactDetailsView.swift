//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by deshollow on 27.12.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let info: Person
    
    var body: some View {

            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone")
                    Text("\(info.phone)")
                }
                HStack {
                    Image(systemName: "mail")
                    Text("\(info.email)")
                }
            }
   
        .navigationTitle(info.name + " " + info.surname)
    }
}


#Preview {
    ContactDetailsView(info: Person.init(name: "1", surname: "2", phone: "3", email: "4"))
}
