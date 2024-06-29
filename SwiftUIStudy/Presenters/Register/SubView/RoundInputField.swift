//
//  RoundInputField.swift
//  SwiftUIStudy
//
//  Created by JeongHyun Kim on 6/29/24.
//

import SwiftUI

struct RoundInputField: View {
    
    @FocusState.Binding var isFocused: Bool
    @Binding var textValue: String
    @Binding var promptColor: Color
    var promptText: String
    
    var body: some View {
        HStack {
            TextField(text: $textValue, prompt: placeHolderView(text: promptText)) {}
                .padding(5)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 6)
//                                .stroke(.gray, lineWidth: 0.5)
//                        )
                .focused($isFocused)
        }
        .padding(12)
        .background(.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private func placeHolderView(text: String) -> Text {
        return Text(text)
            .foregroundColor(promptColor)
    }
}

//#Preview {
//    @FocusState var focused: Bool
//    focused = false
//    RoundInputField(isFocused: $focused , textValue: .constant(""))
//}
