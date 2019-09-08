
//  ContentView.swift
//  Text Pong
//
//  Created by Thomas Braun on 8/21/19.
//  Copyright © 2019 Thomas Braun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var totalClick: Int = 0
    @State var clicked: Bool = false
    @State var userGuess: Bool = false
    @State var guess: String = "0"
    
    var body: some View {
        
        VStack(spacing: 100) {//Contains both the triangles
         
            
            if userGuess {
                TextField("What is your guess?", text: $guess)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {self.userGuess.toggle()}){
                    Text("Toggle Text Field")
                }
            } else {
                UserTriangle()
                Button(action: {self.userGuess.toggle()}){
                    Text("Toggle Text Field")
                }
                OpponentTriangle()// Ending Opponent Triangle verticle Stack
            }
        }
    }
}

struct UserTriangle: View {
    
    @State var tapped = false
    @State var hit = false
    @State var userTriangle = Game()
    
    var body: some View {
        VStack {//User Triangle
            HStack(spacing: 15.0) {
                Button(action: {
                    self.tapped = true
                    self.userTriangle.cupShooting = 7
                    self.userTriangle.triangle[6].status = false
                }) {
                    if !userTriangle.triangle[6].status {
                        Text("x")
                            .font(.largeTitle)
                    } else {
                        Text("7")
                            .font(.largeTitle)
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    if !userTriangle.triangle[7].status {
                        Text("x")
                            .font(.largeTitle)
                    } else {
                        Text("8")
                            .font(.largeTitle)
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    if !userTriangle.triangle[8].status {
                        Text("x")
                            .font(.largeTitle)
                    } else {
                        Text("9")
                            .font(.largeTitle)
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {///convert this one and the ones belwo
                    Text("10")
                        .font(.largeTitle)
                }
            }
            HStack(spacing: 15.0) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("6")
                        .font(.largeTitle)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("5")
                        .font(.largeTitle)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("4")
                        .font(.largeTitle)
                }
            }
            HStack(spacing: 15.0) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("3")
                        .font(.largeTitle)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("2")
                        .font(.largeTitle)
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("1")
                    .font(.largeTitle)
                
            }
        }
    }
}

struct OpponentTriangle: View {
    var body: some View {
        VStack {//Opponent Triangle
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("1")
                    .font(.largeTitle)
            }
            HStack(spacing: 15.0) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("2")
                        .font(.largeTitle)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("3")
                        .font(.largeTitle)
                }
            }
            HStack(spacing: 15.0) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("4")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Text("5")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Text("6")
                        .font(.largeTitle)
                }
            }
            HStack(spacing: 15.0) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("7")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Text("8")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Text("9")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Text("10")
                        .font(.largeTitle)
                }
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
