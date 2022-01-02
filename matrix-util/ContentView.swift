//
//  ContentView.swift
//  matrix-util
//
//  Created by Jacob Shalabi on 1/1/22.
//

import SwiftUI
import LASwift

struct ContentView: View {
    var n = 5.3423423
    var body: some View {
        VStack {
            MatrixView(3,3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
