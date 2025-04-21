//
//  ContentView.swift
//  MoodBoard
//
//  Created by WADE, RYLAN on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "face.smiling.fill")
                }


            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
