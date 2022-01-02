//
//  ContentView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import SwiftUI
import LASwift

struct ContentView: View {
    
    @State var rows: Int = 3
    @State var cols: Int = 3
    
    var body: some View {
        VStack {
            DimensionInput(rows: $rows, cols: $cols)
            MatrixView(rows, cols)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
