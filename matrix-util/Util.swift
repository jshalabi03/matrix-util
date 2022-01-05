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
    let string = String(num)
    let index = string.firstIndex(of: ".")!
    let decimalString = string[index...]
    let startIndex = decimalString.index(after: decimalString.startIndex)
    let len = decimalString.count - 1
    if (len == 1 && decimalString[startIndex] == "0") {
        return 0
    }
    return len
}

// Returns truncated string of double given number of non-zero decimal places
func getTruncatedString(_ num: Double) -> String {
    let numDecimals = numDecimals(num)
    switch(numDecimals) {
    case 2:     return String(format: "%.2f", num)
    case 1:     return String(format: "%.1f", num)
    case 0:     return String(format: "%.0f", num)
    default:    return String(format: "%.0f", num)
    }
}
