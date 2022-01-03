//
//  MatrixEditorMenu.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import SwiftUI
import LASwift

struct MatrixEditorMenu: View {
    
    @Binding var matrix: Matrix
    @Binding var contents: [String]
    @State var currentOperation: MatrixOperation = MatrixOperation.none
    @State var currentValueString: String = ""
    
    var body: some View {
        HStack {
            Picker("Operation", selection: $currentOperation) {
                Text("Fill").tag(MatrixOperation.fill)
            }.padding(.all)
            TextField("Value", text: $currentValueString).padding(.all)
            Button("Set") {
                let currentValue = Double(currentValueString)!
                let matrixRes = executeOperation(matrix, currentOperation, currentValue)
                matrix = matrixRes
                contents = Array(repeating: "0", count: matrix.flat.count)
                for i in 0..<contents.count {
                    contents[i] = String(matrix[i])
                }
            }.padding(.all)
        }
    }
}
