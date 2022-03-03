//
//  ContentView.swift
//  Dicee SwiftUI
//
//  Created by Rafsan Al Mamun on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    // State allows them to be changed even from a struct
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    ExtractedView(num: leftDice)
                    ExtractedView(num: rightDice)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ExtractedView: View {
    
    let num: Int
    
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
