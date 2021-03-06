//
//  SearchBar.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .frame(height: 30)
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search by name", text: $text)
            }
            .padding(EdgeInsets(top: 10, leading: 25, bottom: 0, trailing: 20))
        }
    }

}
