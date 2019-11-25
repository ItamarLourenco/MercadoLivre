//
//  Api.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import Foundation

struct ItemModel : Codable {
    let id: String?
    let site_id: String?
    let title: String?
    let subtitle: String?
    let seller_id: Int?
    let category_id: String?
    let official_store_id: Int?
    let price: Double?
    let base_price: Double?
    let original_price: Double?
    let currency_id: String?
    let initial_quantity: Int?
    let available_quantity:Int?
    let sold_quantity: Int?
    let pictures: [Pictures]?
    let permalink:String?
    
    struct Pictures: Codable {
        let id: String?
        let url: String?
        let secure_url: String?
        let size: String?
        let max_size: String?
        let quality: String?
    }
}
