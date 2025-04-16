//
//  AboutView.swift
//  MoodBoard
//
//  Created by WADE, RYLAN on 4/16/25.
//
import SwiftUI

struct AboutView: View {
    
    var body: some View {
        VStack {
            Text ("Mood Team")
                .font(.largeTitle)
                .padding(.bottom)
            
            Text("Fun Message")
                .font(.title2)
                .fontWeight(.bold)
            
            Text ("No number before 1,000 contains the letter A")
                .frame(width: 300)
                .padding()
            
            Text("About Us")
                .padding(.bottom)
                .font(.title2)
                .fontWeight(.bold)
            
            Text ("Mood Team is made up of Sean, Rylan, Anna, and Erica.")
                .frame(width: 300)
                .padding(.bottom)
            
            Text("App Purpose")
                .padding(.bottom)
                .font(.title2)
                .fontWeight(.bold)
            Text ("This is a mood board app that can help users to express their moods.")
                .frame(width: 300)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
