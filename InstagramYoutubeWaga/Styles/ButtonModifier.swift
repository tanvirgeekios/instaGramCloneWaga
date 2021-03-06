//
//  ButtonModifier.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 28/2/21.
//

import SwiftUI

struct ButtonModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth:0, maxWidth: (UIScreen.main.bounds.width - 100))
            .frame(height:20)
            .padding()
            .foregroundColor(.white)
            .background(Color.black)
            .font(.system(size: 16, weight: .bold))
            .cornerRadius(5.0)
    }
}
