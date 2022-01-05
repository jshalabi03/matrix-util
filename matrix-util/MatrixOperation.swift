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
    case scale
    case invert
    case transpose
}

func operationToString(_ operation: MatrixOperation) -> String {
    switch (operation) {
    case .none:         return "None"
    case .fill:         return "Fill"
    case .scale:        return "Scale"
    case .invert:       return "Invert"
    case .transpose:    return "Transpose"
    }
}

func executeOperation(_ matrix: Matrix, _ operation: MatrixOperation, _ value: Double) throws -> Matrix {
    switch(operation) {
    case .none:
        return matrix
    case .fill:
        let res: Matrix = Matrix(matrix.rows, matrix.cols, value)
        return res
    case .invert:
        if (!isInvertible(matrix)) {
            throw InvalidOperation.NonInvertible
        }
        let res: Matrix = inv(matrix)
        return res
    case .scale:
        let res: Matrix = Matrix(matrix)
        for i in 0..<res.flat.count {
            res[i] = value * res[i]
        }
        return res
    case .transpose:
        let res: Matrix = transpose(matrix)
        return res
    }
    
}
