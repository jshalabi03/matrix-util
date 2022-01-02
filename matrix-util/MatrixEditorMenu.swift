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
    
    var body: some View {
        Menu("Operations") {
            Button("Test") {
                
            }
        }
    }
}
