//
//  ContactCell.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import SwiftUI

struct ContactCell: View {
    
    @State var isShowingDetail = false
    let contact: Contact
    
    var body: some View {
        Button(action: {
            self.isShowingDetail.toggle()
        }) {
            HStack {
                VStack(alignment: .leading) {
                    Text(contact.name)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                    Text(contact.address)
                        .lineLimit(1)
                        .titleFont(size: 15)
                        .foregroundColor(.gray)
                    Text(contact.phoneNumber)
                }
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
            }
        }.sheet(isPresented: $isShowingDetail) {
            ContactDetail(contact: self.contact)
        }
    }
}
