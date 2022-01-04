//
//  InvalidOperation.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/4/22.
//

import Foundation

enum InvalidOperation: Error {
    case None
    case NonInvertible
}

func getErrorMessage(_ error: InvalidOperation) -> String {
    switch(error) {
    case .NonInvertible:
        return "Matrix is non invertible."
    case .None:
        return "None"
    }
}

func getError(_ operation: MatrixOperation) -> InvalidOperation {
    switch(operation) {
    case .invert:
        return InvalidOperation.NonInvertible
    default:
        return InvalidOperation.None
    }
}
