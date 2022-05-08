//
//  ContentView.swift
//  lesson10
//
//  Created by Ho Tam on 08/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button("Button1", action: {
                print("Click1")
            })
            Button(action: {
                print("Click2")
            }, label: {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Button2")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
