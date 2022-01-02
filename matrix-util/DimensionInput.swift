//
//  DimensionInput.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/2/22.
//

import Foundation
import SwiftUI

public struct DimensionInput: View {
    
    @Binding var rows: Int
    @Binding var cols: Int
    
    @State var rowString: String = "2"
    @State var colString: String = "2"
    
    public var body: some View {
        HStack {
            TextField("Rows", text: $rowString)
            TextField("Columns", text: $colString)
            Button("Set", action: {
                rows = Int(rowString)!
                cols = Int(colString)!
            })
        }
    }
}
