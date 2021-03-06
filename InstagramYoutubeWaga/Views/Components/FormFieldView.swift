//
//  FormFieldView.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 28/2/21.
//

import SwiftUI

struct FormFieldView: View {
    var icon:String
    var isSecure:Bool
    var placeholder:String
    @Binding var value:String
    var body: some View {
        HStack{
            Image(systemName: icon)
                .padding(.leading)
                .font(.system(size: 20, weight:.heavy, design:.monospaced))
            Group{
                if(isSecure){
                    SecureField(placeholder, text: $value)
                }else{
                    TextField(placeholder, text: $value)
                }
            }.font(Font.system(size: 20,design: .monospaced))
            .foregroundColor(.black)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.leading)
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .padding()
        }.overlay(
            RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 4)
        ).padding()
    }
}

struct FormFieldView_Previews: PreviewProvider {
    static var previews: some View {
        FormFieldView(icon: "person", isSecure: false, placeholder: "Email", value: .constant("Email@gmail.com"))
    }
}
