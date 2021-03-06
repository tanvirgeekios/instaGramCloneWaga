//
//  ContentView.swift
//  InstagramYoutubeWaga
//
//  Created by MD Tanvir Alam on 28/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SignInView()
                .navigationBarHidden(true)
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
