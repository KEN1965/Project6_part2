//
//  ContentView.swift
//  Project6_part2
//
//  Created by K.Takahama on R 4/11/28.
//

import SwiftUI

struct ContentView: View {
    //ビューの表示方法と非表示方法をカスタマイズ
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Top me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
