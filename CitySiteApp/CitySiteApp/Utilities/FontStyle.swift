//
//  FontStyle.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-03.
//

import Foundation
import SwiftUI

struct BoldNameFont: ViewModifier {
    static var fontSize = 24.0
    static var color: Color = .black
    
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 15))
            .foregroundColor(BoldNameFont.color)
            .bold()
    }
}

extension Text {
    func textStyle<Style:ViewModifier> (_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}
