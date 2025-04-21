//
//  DashboardView.swift
//  MoodBoard
//
//  Created by PETERS, SEAN on 4/16/25.
//

import SwiftUI


struct DashboardView: View {
    @State var selectedMood: Mood = .neutral
    var body: some View {
            VStack {
                NavigationStack {
                    ZStack {
                        Image(.parchment)
                            .resizable()
                            .ignoresSafeArea(.all)
                            .background(Color.black)
                        VStack {
                            Text("Dashboard")
                                .foregroundStyle(.indigo)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding()
                            Text("Todays Mood!")
                                .padding(.bottom, 10)
                            Text(selectedMood.rawValue.capitalized)
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("\(selectedMood.emojiImage)")
                                .font(.system(size: 75))
                            Text("\(selectedMood.moodMessage)")
                                .padding(.bottom, 300)
                            NavigationLink(destination: MoodPickerView(mood: $selectedMood)){
                                Label("Pick a mood!", systemImage: "chevron.right")
                                    .font(.system(size: 20, weight: .bold))
                            }
                        }
                    }
                }
            }
        }
    }



struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

