//
//  ContentView.swift
//  Lesson13Challenge
//
//  Created by Ho Tam on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var slot1 = 1
    @State private var slot2 = 2
    @State private var slot3 = 3
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("Credits: " + String(credits)).font(.title).padding()
            Spacer()
            HStack {
                Image("fruit" + String(slot1))
                    .resizable()
                    .scaledToFit()
                Image("fruit" + String(slot2))
                    .resizable()
                    .scaledToFit()
                Image("fruit" + String(slot3))
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
            Button(action: {
                slot1 = getRandomNumber()
                slot2 = getRandomNumber()
                slot3 = getRandomNumber()
                
                if (slot1 == slot2 && slot2 == slot3) {
                    credits += 100
                } else {
                    credits -= 10
                }
                
            }, label: {
                Text("Spin")
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(.pink)
                    .padding()
            })
            .frame(width: 110, height: 40)
            .background(.pink)
            .cornerRadius(20)
            Spacer()
        }
    }
    
    func getRandomNumber() -> Int {
        return Int.random(in: 1...3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
