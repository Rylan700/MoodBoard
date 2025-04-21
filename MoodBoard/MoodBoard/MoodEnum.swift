//
//  MoodEnum.swift
//  MoodBoard
//
//  Created by HOERSCHGEN, ERICA A. on 4/16/25.
//

import SwiftUI

enum Mood : String, CaseIterable, Identifiable {
    var id: Mood{self}
    
    case happy
    case sad
    case angry
    case surprised
    case neutral
    
    var emojiImage: String {
        switch self{
        case .happy:
            return "😊"
        case .sad:
            return "😢"
        case .angry:
            return "😡"
        case .surprised:
            return "😮"
        case .neutral:
            return "😐"
        }
    }
    
    var moodMessage: String {
        switch self{
        case .happy:
            return "You are feeling happy!"
        case .sad:
            return "You are feeling sad!"
        case .angry:
            return "You are feeling angry!"
        case .surprised:
            return "You are feeling surprised!"
        case .neutral:
            return "You are feeling neutral!"
        }
    }
}

