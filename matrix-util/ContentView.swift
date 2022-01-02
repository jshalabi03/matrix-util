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
    
    var body: some View {
        VStack {
            DimensionInput(rows: $rows, cols: $cols, matrix: $matrix)
            MatrixView(matrix: $matrix)
//            Text("Rows: \(rows + 10), Cols: \(cols + 10)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
