//
//  Font.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import SwiftUI

extension Font {
    public static func AmericanCaptain(size: CGFloat) -> Font {
        return Font.custom("American Captain", size: size)
    }
    
    public static func FjallaOne(size: CGFloat) -> Font {
        return Font.custom("FjallaOne-Regular", size: size)
    }
}

struct TitleFont: ViewModifier {
    let size: CGFloat
    
    func body(content: Content) -> some View {
        return content.font(.FjallaOne(size: size))
    }
}

extension View {
    func titleFont(size: CGFloat) -> some View {
        return ModifiedContent(content: self, modifier: TitleFont(size: size))
    }
    
    func titleStyle() -> some View {
        return ModifiedContent(content: self, modifier: TitleFont(size: 16))
    }
}
