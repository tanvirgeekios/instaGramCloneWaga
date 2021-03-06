//
//  SignUpViewModel.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 6/3/21.
//
import Foundation
import SwiftUI

class SignUpViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    @Published var showActionSheet = false
    @Published var showImagePicker = false
    @Published var sourceType : UIImagePickerController.SourceType = .camera
    @Published var image:UIImage?
}

