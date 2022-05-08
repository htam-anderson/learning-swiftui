//
//  ContentView.swift
//  Lesson11Challenge
//
//  Created by Ho Tam on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var point = 0
    var body: some View {
        VStack {
            Text(String(point)).font(.title).padding()
            HStack{
                Spacer()
                Button(action: {
                    point = point + 2
                }, label: {
                    HStack {
                        Image(systemName: "plus.circle")
                        Text("Plus by 2")
                    }
                })
                Spacer()
                Button(action: {
                    point = point * 2
                }, label: {
                    HStack {
                        Image(systemName: "multiply.circle")
                        Text("Multiply by 2")
                    }
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
