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
    @State var showPreview: Bool = false
    
    var body: some View {
        HStack {
            
            Picker("Operation", selection: $currentOperation) {
                Text("Fill").tag(MatrixOperation.fill)
                Text("Scale").tag(MatrixOperation.scale)
                Text("Invert").tag(MatrixOperation.invert)
                Text("Tranpose").tag(MatrixOperation.transpose)
            }.padding(.all)
            
            TextField("Value", text: $currentValueString).padding(.all)
            
            VStack {
                Button("Set") {
                    do {
                        let currentValue = Double(currentValueString)!
                        let matrixRes = try executeOperation(matrix, currentOperation, currentValue)
                        matrix = matrixRes
                        contents = Array(repeating: "0", count: matrixRes.rows * matrixRes.cols)
                        for i in 0..<contents.count {
                            contents[i] = getTruncatedString(matrixRes[i])
                        }
                    } catch {
                        invalidOperation = true
                    }
                }.alert(isPresented: $invalidOperation) {
                    Alert(title: Text("Invalid Operation"), message: Text(getCorrespondingErrorMessage(currentOperation)))
                }
                
                Button("Preview") {
                    showPreview = true
                }.popover(isPresented: $showPreview) {
                    
                    let currentValue = Double(currentValueString)!
                    let matrixRes = executeOperationAbsolute(matrix, currentOperation, currentValue)
                    
                    Text("Preview")
                        .font(.headline)
                        .padding()
                    
                    StaticMatrixView(matrix: matrixRes)
                    
                    Button("Dismiss") {
                        showPreview = false
                    }
                }
            }
        }
    }
}
