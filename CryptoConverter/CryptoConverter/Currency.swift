//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Micah Moore on 2/18/24.
//

import Foundation

class Currency: Identifiable, Equatable {
    let id: UUID
    var name: String
    var conversionRate: Double
    var isCrypto: Bool

    init(name: String, conversionRate: Double, isCrypto: Bool) {
        self.id = UUID()
        self.name = name
        self.conversionRate = conversionRate
        self.isCrypto = isCrypto
    }

    static func == (lhs: Currency, rhs: Currency) -> Bool {
        lhs.id == rhs.id
    }
}
