//
//  Util.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import LASwift

func roundToHundredths(_ num: Double) -> Double {
    return round(num * 100) / 100.0
}

func isInvertible(_ matrix: Matrix) -> Bool {
    return matrix.cols == matrix.rows && det(matrix) == 0
}
