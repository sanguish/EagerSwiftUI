//
//  Untitled.swift
//  EagerSwift2
//
//  Created by Scott Anguish on 7/2/24.
//

import Foundation
import SwiftUI

struct SymbolView: View, Identifiable, Hashable {
    var id = UUID()
    var sfsymbol: SFSymbol

    init(id: UUID = UUID(), sfsymbol: SFSymbol) {
        self.sfsymbol = sfsymbol
        print("\(sfsymbol.symbolName)")
    }

    var body: some View {
        VStack(spacing: 30) {
            sfsymbol.image
                .resizable()
                .foregroundColor(Color.blue)
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
            Text(sfsymbol.symbolName)
                .font(.largeTitle)
        }

    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: SymbolView, rhs: SymbolView) -> Bool {
        lhs.id == rhs.id
    }
}

#Preview {
    SymbolView(sfsymbol: SFSymbol(symbolName: "video"))
}
