//
//  SignUpView.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 5/3/21.
//

import SwiftUI

struct SignUpView: View {
    @StateObject private var signUpVM = SignUpViewModel()
    var body: some View {
        VStack(){
            Image(uiImage: signUpVM.image ?? UIImage(systemName:"person")!)
                .resizable()
                .frame(width: 120, height: 120)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 2))
                .shadow(radius: 10)
                .padding(.bottom,25)
                .onTapGesture(count:1) {
                    signUpVM.showActionSheet = true
                }
            
            Text("Welcome")
                .font(.system(size: 32, weight: .heavy))
            Text("Sign Up to start")
                .font(.system(size: 16, weight: .medium))
            FormFieldView(icon: "mail", isSecure: false, placeholder: "E-Mail", value: $signUpVM.email)
            FormFieldView(icon: "person", isSecure: false, placeholder: "Username", value: $signUpVM.username)
            FormFieldView(icon: "lock", isSecure: false, placeholder: "password", value: $signUpVM.password)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sign Up")
                    .modifier(ButtonModifier())
            })
            
            
            
        }.padding()
        .actionSheet(isPresented: $signUpVM.showActionSheet, content: {
            ActionSheet(title: Text("Select a photo"), message: Text("Choose"), buttons:[
            
            .default(Text("Photo Library")){
                signUpVM.showImagePicker = true
                signUpVM.sourceType = .photoLibrary
            },
            .default(Text("Camera")){
                signUpVM.showImagePicker = true
                signUpVM.sourceType = .camera
            },
            .cancel()
            ])
        })
        .sheet(isPresented: $signUpVM.showImagePicker) {
            ImagePicker(image: $signUpVM.image, isShown: $signUpVM.showImagePicker, sourceType: signUpVM.sourceType)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
