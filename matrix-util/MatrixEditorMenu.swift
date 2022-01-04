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
    @State var currentOperation: MatrixOperation = MatrixOperation.fill
    @State var currentValueString: String = ""
    @State var invalidOperation: Bool = false
    
    var body: some View {
        HStack {
            
            Picker("Operation", selection: $currentOperation) {
                Text("Fill").tag(MatrixOperation.fill)
                Text("Scale").tag(MatrixOperation.scale)
                Text("Invert").tag(MatrixOperation.invert)
            }.padding(.all)
            
            TextField("Value", text: $currentValueString).padding(.all)
            
            Button("Set") {
                let currentValue = Double(currentValueString)!
                do {
                    let matrixRes = try executeOperation(matrix, currentOperation, currentValue)
                } catch is InvalidOperation {
                    
                }
                matrix = matrixRes
                contents = Array(repeating: "0", count: matrixRes.rows * matrixRes.cols)
                for i in 0..<contents.count {
                    contents[i] = String(format: "%.2f", matrixRes[i])
                }
            }.alert(isPresented: $invalidOperation) {
                Alert(title: "Invalid Operation", message: getErrorMessage(<#T##error: InvalidOperation##InvalidOperation#>))
            }.padding(.all)
        }
    }
}
