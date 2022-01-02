//
//  MatrixView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import SwiftUI
import LASwift

public struct MatrixView: View {
    
    var matrix: Matrix
    
    public var body: some View {
        VStack {
            ForEach(0..<matrix.rows) {one in
                HStack {
                    ForEach(0..<matrix.cols) {two in
                        Text("\(matrix[one, two], specifier: "%.2f")")
                    }
                }
            }
        }
    }
    
    init(_ rows: Int, _ cols: Int, fill: Double = 0) {
        self.matrix = Matrix(rows, cols, fill)
    }
}
