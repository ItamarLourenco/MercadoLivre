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
    
    init(id: String,
         site_id:String,
         title:String,
         subtitle:String,
         seller_id: Int,
         category_id: String,
         official_store_id: Int,
         price: Double,
         base_price: Double,
         original_price: Double,
         currency_id: String,
         initial_quantity: Int,
         available_quantity: Int,
         sold_quantity: Int,
         pictures: [Pictures],
         permalink: String) {
        
        self.id = id
        self.site_id = site_id
        self.title = title
        self.subtitle = subtitle
        self.seller_id = seller_id
        self.category_id = category_id
        self.official_store_id = official_store_id
        self.price = price
        self.base_price = base_price
        self.original_price = original_price
        self.currency_id = currency_id
        self.initial_quantity = initial_quantity
        self.available_quantity = available_quantity
        self.sold_quantity = sold_quantity
        self.pictures = pictures
        self.permalink = permalink
    }
    
    struct Pictures: Codable {
        let id: String?
        let url: String?
        let secure_url: String?
        let size: String?
        let max_size: String?
        let quality: String?
        
        init(id: String, url: String, secure_url:String, size: String, max_size:String, quality: String){
            self.id = id
            self.url = url
            self.secure_url = secure_url
            self.size = size
            self.max_size = max_size
            self.quality = quality
        }
    }
}

extension ItemModel: Equatable {
    
    static func == (lhs: ItemModel, rhs: ItemModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.site_id == rhs.site_id
            && lhs.title == rhs.title
            && lhs.subtitle == rhs.subtitle
            && lhs.seller_id == rhs.seller_id
            && lhs.category_id == rhs.category_id
            && lhs.official_store_id == rhs.official_store_id
            && lhs.price == rhs.price
            && lhs.base_price == rhs.base_price
            && lhs.original_price == rhs.original_price
            && lhs.original_price == rhs.original_price
            && lhs.currency_id == rhs.currency_id
            && lhs.initial_quantity == rhs.initial_quantity
            && lhs.available_quantity == rhs.available_quantity
            && lhs.sold_quantity == rhs.sold_quantity
            && lhs.permalink == rhs.permalink
    }
    
}
