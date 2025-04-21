//
//  MoodPickerView.swift
//  MoodBoard
//
//  Created by HOERSCHGEN, ANNA M. on 4/16/25.
//

import SwiftUI

struct MoodPickerView: View {
    @Binding var mood: Mood
    @Environment(\.dismiss) var dismiss
    var body: some View {
        List {
            ForEach(Mood.allCases) { moodOption in
                Button(action: {
                    mood = moodOption
                    dismiss()
                }) {
                    HStack {
                        Text(moodOption.rawValue.capitalized)
                            .foregroundColor(.primary)
                        Spacer()
                        if mood == moodOption {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
    }
}


// Note: Pass binding with MoodPickerView(mood: $selectedMood)
