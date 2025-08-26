//
//  ContentView.swift
//  CS193
//
//  Created by anas alkama on 02/03/2025.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
                CardView (faceUp : true)
                CardView ()
                CardView ()
                CardView ()
                CardView ()
                CardView ()

            }
            
        }
        
    }
    

struct CardView: View{
    var faceUp : Bool = false
    
    var body: some View{
        ZStack {
            
            if faceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
            }
        }

        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
