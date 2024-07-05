//
//  Untitled.swift
//  EagerSwift2
//
//  Created by Scott Anguish on 7/2/24.
//

import Foundation
import SwiftUI

struct SymbolView: View {
    var id = UUID()
    var sfsymbol: SFSymbol

    init(sfsymbol: SFSymbol) {
        self.sfsymbol = sfsymbol
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
        .onAppear {
            print(".onAppear \(sfsymbol.symbolName)")
        }

    }
}

#Preview {
    SymbolView(sfsymbol: SFSymbol(symbolName: "video"))
}
