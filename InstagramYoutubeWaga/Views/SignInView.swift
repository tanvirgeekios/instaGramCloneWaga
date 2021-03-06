//
//  SignInView.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 28/2/21.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack(){
            Image(systemName: "camera")
                .font(.system(size: 60, weight: .black, design: .monospaced))
            Text("Welcome Back")
                .font(.system(size: 32, weight: .heavy))
            Text("Sign in to continue")
                .font(.system(size: 16, weight: .medium))
            FormFieldView(icon: "mail", isSecure: false, placeholder: "E-Mail", value: $email)
            FormFieldView(icon: "lock", isSecure: false, placeholder: "password", value: $password)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sign In")
                    .modifier(ButtonModifier())
            })
            NavigationLink(
                destination: SignUpView(),
                label: {
                    HStack(){
                        Text("New?")
                        Text("Create an account")
                            .font(.system(size: 20, weight: .semibold))
                    }.padding(.top, 10)
                }).foregroundColor(.black)
            
        }.padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
