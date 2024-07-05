//
//  HomeView.swift
//  EagerSwift
//
//  Created by Scott Anguish on 7/2/24.
//

import SwiftUI

struct HomeView: View {
    let viewModel: HomeViewModel

    init() {
        self.viewModel = HomeViewModel()
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.symbolsArray) { sfsymbol in
                    NavigationLink(value: sfsymbol) {
                        Label(sfsymbol.symbolName, 
                              systemImage: sfsymbol.symbolName)
                    }
                }
            }
            .navigationDestination(for: SFSymbol.self) { sfsymbol in
                SymbolView(sfsymbol: sfsymbol)
            }
            .navigationTitle("Symbols")
            .listStyle(.plain)

            .toolbarTitleDisplayMode(.inlineLarge)

        }
    }
}

#Preview {
    HomeView()
}
