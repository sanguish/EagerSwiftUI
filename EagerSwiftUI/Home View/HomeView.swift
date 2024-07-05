//
//  HomeView.swift
//  EagerSwift
//
//  Created by Scott Anguish on 7/2/24.
//

import SwiftUI

struct HomeView: View {
    var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.symbolsArray) { sfsymbol in
                    NavigationLink {
                        NavigationLink(sfsymbol.symbolName, destination: SymbolView(sfsymbol: sfsymbol))

                    } label: {
                        Label(sfsymbol.symbolName, systemImage: sfsymbol.symbolName)
                    }

                }
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
