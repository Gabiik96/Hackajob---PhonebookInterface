//
//  NavigationView.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import SwiftUI

extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}
