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
//                let currRow = matrix.rows
//                let currCol = matrix.cols
                let matrixRes = executeOperation(matrix, currentOperation, currentValue)
                matrix = matrixRes
//                matrix = executeOperation(matrix, currentOperation, currentValue)
            }.padding(.all)
        }
    }
}
