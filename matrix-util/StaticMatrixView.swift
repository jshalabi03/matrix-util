//
//  StaticMatrixView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/6/22.
//

import Foundation
import SwiftUI
import LASwift

struct StaticMatrixView: View {
    
    @State var matrix: Matrix
    
    var body: some View {
        VStack {
            ForEach(0..<matrix.rows, id: \.self) {row in
                HStack {
                    ForEach(0..<matrix.cols, id: \.self) {col in
                        Text("\(matrix[row,col])")
                    }
                }
            }
        }
    }
}
