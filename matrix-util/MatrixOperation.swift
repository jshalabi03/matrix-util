//
//  MatrixOperation.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import LASwift

enum MatrixOperation {
    case none
    case fill
    case invert
}

func operationToString(_ operation: MatrixOperation) -> String {
    switch (operation) {
    case .none: return "None"
    case .fill: return "Fill"
    case .invert: return "Invert"
    }
}

func executeOperation(_ matrix: Matrix, _ operation: MatrixOperation, _ value: Double) -> Matrix {
    switch(operation) {
    case .none:
        return matrix
    case .fill:
        let res: Matrix = Matrix(matrix.rows, matrix.cols, value)
        return res
    case .invert:
        let res: Matrix = inv(matrix)
        return res
    }
    
}
