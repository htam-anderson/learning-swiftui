//
//  ContentView.swift
//  uitest
//
//  Created by Ho Tam on 02/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                
                VStack {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .padding([.leading, .bottom, .trailing])
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.black.opacity(0.75))
                .cornerRadius(10)
            }
            
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                VStack {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("London")
                        .padding([.leading, .bottom, .trailing])
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.black.opacity(0.75))
                .cornerRadius(10)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
