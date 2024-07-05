//
//  Breed.swift
//  EagerSwift
//
//  Created by Scott Anguish on 7/2/24.
//

import Foundation
import SwiftUI

struct SFSymbol: Identifiable, Hashable {
    var id = UUID()
    var symbolName: String

    init(symbolName: String) {
        self.symbolName = symbolName
    }

    var image: Image {
        return Image(systemName: symbolName)
    }
}
