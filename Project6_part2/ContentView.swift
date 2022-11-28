//
//  ContentView.swift
//  Project6_part2
//
//  Created by K.Takahama on R 4/11/28.
//

import SwiftUI

struct ContentView: View {
    //アニメーションスタックの制御
    @State private var enabled = false
    
    var body: some View {
        Button("Top me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        .background(enabled ? .blue : .red)//clipShapeとanimationが取り消されてします！！

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
