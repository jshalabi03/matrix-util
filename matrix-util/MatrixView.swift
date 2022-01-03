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
    @Binding var contents: [String]
    
    public var body: some View {
        VStack {
            ForEach(0..<matrix.rows, id: \.self) {row in
                HStack {
                    ForEach(0..<matrix.cols, id: \.self) {col in
                        TextField(" ", text: $contents[row * matrix.cols + col], onEditingChanged: {_ in
                            for i in 0..<contents.count {
                                if let value = Double(contents[i]) {
                                    matrix[i] = value
                                }
                            }
                        })
                    }
                }
            }
        }.padding(.all)
        Text("Sum: \(sum(matrix.flat))")
    }
    
//    init(_ rows: Int, _ cols: Int, fill: Double = 0) {
//        self.matrix = Matrix(rows, cols, fill)
//    }
}
