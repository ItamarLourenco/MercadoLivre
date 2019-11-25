//
//  Api.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//


import Foundation

struct Results : Codable {
	let id : String?
	let site_id : String?
	let title : String?
	let price : Double?
	let currency_id : String?
	let available_quantity : Int?
	let sold_quantity : Int?
	let buying_mode : String?
	let listing_type_id : String?
	let stop_time : String?
	let condition : String?
	let permalink : String?
	let thumbnail : String?
	let accepts_mercadopago : Bool?
	let category_id : String?
	let official_store_id : Int?
	let catalog_product_id : String?
	let tags : [String]?
	let catalog_listing : Bool?
    
    init(id: String,
         site_id: String,
         title: String,
         price: Double,
         currency_id: String,
         available_quantity:Int,
         sold_quantity:Int,
         buying_mode:String,
         listing_type_id:String,
         stop_time:String,
         condition:String,
         permalink:String,
         thumbnail:String,
         accepts_mercadopago:Bool,
         category_id:String,
         official_store_id:Int,
         catalog_product_id:String,
         tags:[String],
         catalog_listing:Bool){
        
        self.id = id
        self.site_id = site_id
        self.title = title
        self.price = price
        self.currency_id = currency_id
        self.available_quantity = available_quantity
        self.sold_quantity = sold_quantity
        self.buying_mode = buying_mode
        self.listing_type_id = listing_type_id
        self.stop_time = stop_time
        self.condition = condition
        self.permalink = permalink
        self.thumbnail = thumbnail
        self.accepts_mercadopago = accepts_mercadopago
        self.category_id = category_id
        self.official_store_id = official_store_id
        self.catalog_product_id = catalog_product_id
        self.tags = tags
        self.catalog_listing = catalog_listing
        
    }
}

extension Results: Equatable {
    
    static func == (lhs: SearchModel, rhs: SearchModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.site_id == rhs.site_id
            && lhs.title == rhs.title
            && lhs.price == rhs.price
            && lhs.currency_id == rhs.currency_id
            && lhs.available_quantity == rhs.available_quantity
            && lhs.sold_quantity == rhs.sold_quantity
            && lhs.buying_mode == rhs.buying_mode
            && lhs.listing_type_id == rhs.listing_type_id
            && lhs.stop_time == rhs.stop_time
            && lhs.condition == rhs.condition
            && lhs.permalink == rhs.permalink
            && lhs.thumbnail == rhs.thumbnail
            && lhs.accepts_mercadopago == rhs.accepts_mercadopago
            && lhs.category_id == rhs.category_id
            && lhs.official_store_id == rhs.official_store_id
            && lhs.catalog_product_id == rhs.catalog_product_id
            && lhs.tags == rhs.tags
            && lhs.catalog_listing == rhs.catalog_listing
    }
    
}


