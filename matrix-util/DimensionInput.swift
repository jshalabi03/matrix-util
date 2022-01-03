//
//  DimensionInput.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import SwiftUI
import LASwift

public struct DimensionInput: View {
    
    @Binding var matrix: Matrix
    @Binding var contents: [String]
    
    @State var rowString: String = ""
    @State var colString: String = ""
    
    public var body: some View {
        HStack {
            TextField("Rows", text: $rowString).padding(.all)
            TextField("Columns", text: $colString).padding(.all)
            Button("Set", action: {
                let rows = Int(rowString)!
                let cols = Int(colString)!
                matrix = Matrix(rows, cols)
                contents = Array(repeating: "0", count: rows * cols)
            }).padding(.all)
        }
    }
}
