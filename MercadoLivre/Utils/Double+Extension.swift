//
//  Double+Extension.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import Foundation

extension Double {
    var toPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency

        formatter.locale = Locale(identifier: "pt_BR")
        return formatter.string(from: self as NSNumber)!
    }
}
