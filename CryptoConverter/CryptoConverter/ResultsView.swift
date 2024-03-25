//
//  ResultsView.swift
//  CurrencyConverter
//
//  Created by Micah Moore on 2/18/24.
//

import SwiftUI

struct ResultsView: View {
    @ObservedObject var viewModel: CurrencyViewModel
    
    var body: some View {
        VStack {
            Text("Conversion Results")
                .font(.title)
                .padding()
            
            ForEach(Array(zip(viewModel.selectedCurrencies, viewModel.convertedValues)), id: \.0.id) { (currency, value) in
                HStack {
                    Text(currency.name)
                    Spacer()
                    Text("\(value, specifier: "%.2f")")
                }
                .padding()
            }
        }
        .navigationBarTitle(Text("Converted Currencies"), displayMode: .inline)
    }
}
