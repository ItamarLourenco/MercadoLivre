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
}
