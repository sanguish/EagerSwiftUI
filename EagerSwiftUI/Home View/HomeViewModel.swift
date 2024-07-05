//
//  HomeViewModel.swift
//  EagerSwift
//
//  Created by Scott Anguish on 7/2/24.
//

import Foundation

@Observable
class HomeViewModel: Identifiable {
    var id = UUID()
    var symbolsArray: [SFSymbol] = []


    init() {
        for symbol in sfSymbols {
            self.symbolsArray.append(SFSymbol(symbolName: symbol))
        }
        
    }

    private let sfSymbols = [
        "house",
        "bell",
        "bookmark",
        "calendar",
        "camera",
        "cart",
        "clock",
        "cloud",
        "folder",
        "gear",
        "globe",
        "heart",
        "lightbulb",
        "link",
        "lock",
        "mail",
        "map",
        "megaphone",
        "music.note",
        "paperclip",
        "person",
        "phone",
        "photo",
        "pin",
        "printer",
        "scissors",
        "star",
        "trash",
        "umbrella",
        "video"
    ]






}

