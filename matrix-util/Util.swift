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
    return matrix.cols == matrix.rows && det(matrix) != 0
}

// Returns number of non-zero decimal places (not significant digits)
// If number of decimal places is higher than 2, then 2 is returned
func numDecimals(_ num: Double) -> Int {
    var hundred: Int = Int(num * 100)
    if (hundred % 2 != 0) {
        return 2
    }
    hundred /= 10
    if (hundred % 2 != 0) {
        return 1
    }
    return 0
}
