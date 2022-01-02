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
    @State var currentValue: Double = 0
    @State var currentValueString: String = ""
    
    var body: some View {
        HStack {
            Picker("Operation", selection: $currentOperation) {
                Text("Fill").tag(MatrixOperation.fill)
            }.padding(.all)
            TextField("Value", text: $currentValueString).padding(.all)
            Button("Set") {
                currentValue = Double(currentValueString)!
                let currRow = matrix.rows
                let currCol = matrix.cols
                matrix = Matrix(currRow,currCol, currentValue)
//                matrix = executeOperation(matrix, currentOperation, currentValue)
            }.padding(.all)
        }
    }
}
