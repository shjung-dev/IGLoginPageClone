//
//  ContentView.swift
//  Instagram LoginPage Clone
//
//  Created by SangHil on 28/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            Login(path: $path)
                .navigationDestination(for: String.self){ screen in
                    if screen == "SignUp"{
                        SignUp(path: $path)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
