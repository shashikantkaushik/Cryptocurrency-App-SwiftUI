//
//  HomeView.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 02/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            
            VStack{
                Text("Header")
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView{
        HomeView()
            .navigationBarHidden(true)
    }
 
}
