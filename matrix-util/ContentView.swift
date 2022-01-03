//
//  ContentView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import SwiftUI
import LASwift

struct ContentView: View {
    
    @State var matrix: Matrix = Matrix(3,3)
    @State var contents: [String] = Array(repeating: "0", count: 9)
    
    var body: some View {
        VStack {
            DimensionInput(matrix: $matrix, contents: $contents)
            MatrixView(matrix: $matrix, contents: $contents)
            MatrixEditorMenu(matrix: $matrix, contents: $contents)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
