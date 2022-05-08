//
//  ContentView.swift
//  Lesson12Challenge
//
//  Created by Ho Tam on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var point = 0
    @State private var shouldDecrease = false
    var body: some View {
        VStack {
            Text(String(point))
                .padding()
            Button(action: {
                if (!shouldDecrease) {
                    increase()
                } else {
                    decrease()
                }
                
                if (point > 50) {
                    shouldDecrease = true
                } else if (point < 0) {
                    shouldDecrease = false
                }
            }, label: {
                Text("button")
            })
        }
    }
    
    func increase() {
        let randomNumberIncrease = Int.random(in: 1...10)
        point = point + randomNumberIncrease
    }
    
    func decrease() {
        let randomNumberDecrease = Int.random(in: 1...10)
        point = point - randomNumberDecrease
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
