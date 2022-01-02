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
            }
            TextField("Value", text: $currentValueString)
            Button("Set") {
                currentValue = Double(currentValueString)!
//                matrix = executeOperation(matrix, currentOperation, currentValue)
            }
            Text("cur: \(currentValue)")
        }
    }
}
