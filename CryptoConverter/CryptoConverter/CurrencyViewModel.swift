//
//  CurrencyViewModel.swift
//  CurrencyConverter
//
//  Created by Micah Moore on 2/18/24.
//

import Foundation

class CurrencyViewModel: ObservableObject {
    @Published var usdAmount: String = ""
    @Published var selectedCurrencies: [Currency] = []
    @Published var convertedValues: [Double] = []
    @Published var showError: Bool = false

    let availableCurrencies: [Currency] = [
        Currency(name: "EUR", conversionRate: 0.9, isCrypto: false),
        Currency(name: "JPY", conversionRate: 110.0, isCrypto: false),
        Currency(name: "GBP", conversionRate: 0.75, isCrypto: false),
        Currency(name: "CAD", conversionRate: 1.25, isCrypto: false),
        // Crypto currencies
        Currency(name: "BTC", conversionRate: 0.000022, isCrypto: true),
        Currency(name: "ETH", conversionRate: 0.00032, isCrypto: true),
        Currency(name: "LTC", conversionRate: 0.0034, isCrypto: true),
        Currency(name: "XRP", conversionRate: 0.77, isCrypto: true),
            ]

    func convert() {
        guard let amount = Double(usdAmount), amount >= 0 else {
            showError = true
            return
        }
        showError = false
        convertedValues = selectedCurrencies.map { currency in
            amount * currency.conversionRate
        }
    }
}
