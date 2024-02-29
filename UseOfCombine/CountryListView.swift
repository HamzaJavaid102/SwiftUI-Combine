//
//  CountryListView.swift
//  UseOfCombine
//
//  Created by Hamza Javaid on 29/02/2024.
//

import SwiftUI

struct CountryListView: View {
    
    @State var viewModel = CountryViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(viewModel.countries, id: \.name.official) { country in
                        HStack {
                            Text(country.name.official ?? "")
                            Spacer ()
                            Text(country.flag)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Asian Countries")
            .onAppear {
                viewModel.fetchCountryList()
        }
        }
    }
}

#Preview {
    CountryListView()
}
