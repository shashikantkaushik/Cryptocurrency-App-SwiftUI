//
//  Cryptocurrency_SwiftUIApp.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 02/10/24.
//

import SwiftUI

@main
struct Cryptocurrency_SwiftUIApp: App {
    @StateObject private var vm=HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
