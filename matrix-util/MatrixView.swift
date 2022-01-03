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
    
    @Binding var matrix: Matrix
    
    public var body: some View {
        VStack {
            ForEach(0..<matrix.rows, id: \.self) {one in
                HStack {
                    ForEach(0..<matrix.cols, id: \.self) {two in
                        Text("\(matrix[one, two], specifier: "%.2f")")
                    }
                }
            }
        }.padding(.all)
    }
    
//    init(_ rows: Int, _ cols: Int, fill: Double = 0) {
//        self.matrix = Matrix(rows, cols, fill)
//    }
}
