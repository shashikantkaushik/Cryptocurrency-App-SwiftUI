//
//  ContentView.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack{
                Text("asdf")
                    .foregroundColor(Color.theme.red)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
     
}
