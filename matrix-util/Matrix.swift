//
//  Matrix.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import Foundation

public class Matrix {
    
    var flat = [Double]()
    
    var rows: Int = 0
    var cols: Int = 0
    
    public init(_ r: Int, _ c: Int, _ fill: Double = 0) {
        precondition(r > 0 && c > 0, "Dimensions must be positive.")
        flat = Array(repeating: fill, count: r * c)
    }
    
}
