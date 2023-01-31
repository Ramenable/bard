//
//  WelcomeScreenView.swift
//  Bard
//
//  Created by John Chen on 1/30/23.
//

import SwiftUI


struct WelcomeScreenView: View {
    
    @State var genre: String = ""
    
    var body: some View {
        NavigationView {
                VStack {
                    GenreText()
                    GenreTextField(genre: $genre)
                    
                    NavigationLink(destination: {
                        EmptyView()
                        Text("Thank you")
                    }, label: {
                        ConfirmText()
                    })
                }
                .padding()
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct GenreText: View {
    var body: some View {
        Text("Select your favorite genres")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct GenreTextField: View {
    @Binding var genre: String
    var body: some View {
        TextField("Genre", text: $genre)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct ConfirmText: View {
    var body: some View {
        Text("CONFIRM")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
