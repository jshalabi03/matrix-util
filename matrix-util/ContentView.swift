//
//  ContentView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import SwiftUI
import LASwift

struct ContentView: View {
    
    @State var rows: Int = 3
    @State var cols: Int = 3
    @State var matrix: Matrix = Matrix(3,3)
    @State var currentOperation: String = ""
    
    var body: some View {
        VStack {
            DimensionInput(rows: $rows, cols: $cols, matrix: $matrix)
            MatrixView(matrix: $matrix).padding(.all)
            MatrixEditorMenu(matrix: $matrix)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
