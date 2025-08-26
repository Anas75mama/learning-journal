//
//  ContentView.swift
//  TheStacks
//
//  Created by Anas Alkama on 25/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Vstack item1")
            Text("VStack item2")
            Spacer()
            Divider()
                .background(.black)
            Text("VStack item3")
            HStack {
                Text("HStack item1")
                Divider()
                    .background(.black)
                Text("HStack item2")
                Divider()
                    .background(.black)
                Spacer()
                Text("HStack item3")
            }
            .background(.red)
            ZStack {
                Text("ZStack item1")
                    .padding()
                    .background(.green)
                    .opacity(0.8)
                
                Text("ZStack item2")
                    .padding()
                    .background(.green)
                    .offset(x:80, y:-400)
                    
            }
        }
        .background(.blue)
        .padding()
    }
}

#Preview {
    ContentView()
}
