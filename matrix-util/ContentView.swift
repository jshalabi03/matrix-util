//
//  ContentView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Matrix(n: 3, m: 3)
    }
}

struct Matrix: View {
    
    private var n: Int
    private var m: Int
    
    private var contents: [[Int]]
    
    var body: some View {
        
        VStack {
            ForEach(0..<n) { n in
                HStack {
                    ForEach(0..<m) { m in
                        
                        Text("\(n), \(m)")
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                    }
                }
            }
        }
        
    }
    
    init(n: Int, m: Int) {
        self.n = n
        self.m = m
        self.contents = [[Int]]()
        
        for i in 0..<n {
            for j in 0..<n {
                self.contents[i][j] = 0
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
