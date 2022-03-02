//
//  ContentView.swift
//  MiCard
//
//  Created by Rafsan Al Mamun on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Rafsan Al Mamun")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Rafsan Al Mamun")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+880 167 421 5002", image: "phone.fill")
                InfoView(text: "rafsan7238@gmail.com", image: "envelope.fill")
                InfoView(text: "https://rafsan.tech", image: "network")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct InfoView: View {
    
    let text: String
    let image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .overlay(
                HStack {
                Image(systemName: image)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                Text(text)
                    
                })
            .padding(.all)
    }
}
