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
    
    @Binding var rows: Int
    @Binding var cols: Int
    @Binding var matrix: Matrix
    
    @State var rowString: String = ""
    @State var colString: String = ""
    
    public var body: some View {
        HStack {
            TextField("Rows", text: $rowString).padding(.all)
            TextField("Columns", text: $colString).padding(.all)
            Button("Set", action: {
                rows = Int(rowString)!
                cols = Int(colString)!
                matrix = Matrix(rows, cols)
            }).padding(.all)
        }
    }
}
