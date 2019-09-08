//
//  view.swift
//  Text Pong
//
//  Created by Thomas Braun on 8/22/19.
//  Copyright © 2019 Thomas Braun. All rights reserved.
//

import Foundation


struct OpponentTriangleView: View {
    var body: some View {
        VStack {//Opponent Triangle
            HStack {
                VStack {
                    Part1View()
                    Part2View()
                    Part3View()
                    Part4View()
                }
            }
        }// Ending Opponent Triangle vertical Stack
    }
}

extension OpponentTriangleView {
    struct Part1View: View {
        var body: some View {
            HStack {
                Button(action: {}) { Text("1") .font(.largeTitle) }
            }
        }
    }

    struct Part2View: View {
        var body: some View {
            HStack {
                Button(action: {}) { Text("2").font(.largeTitle) }
                Button(action: {}) { Text("3").font(.largeTitle) }
            }
        }
    }

    struct Part3View: View {
        var body: some View {
            HStack {
                Button(action: {}) { Text("4").font(.largeTitle) }
                Button(action: {}) { Text("5").font(.largeTitle) }
                Button(action: {}) { Text("6").font(.largeTitle) }
            }
        }
    }

    struct Part4View: View {
        var body: some View {
            HStack {
                Button(action: {}) { Text("7").font(.largeTitle) }
                Button(action: {}) { Text("8").font(.largeTitle) }
                Button(action: {}) { Text("9").font(.largeTitle) }
                Button(action: {}) { Text("10").font(.largeTitle) }
            }
        }
    }
}
