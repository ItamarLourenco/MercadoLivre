//
//  ResultsMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class ResultsMock: NSObject {

    static var mock = ResultsModel(id: "ID",
                        site_id: "Site ID",
                        title: "Title",
                        price: 0.0,
                        currency_id: "Currency id",
                        available_quantity: 0,
                        sold_quantity: 0,
                        buying_mode: "Buying mode",
                        listing_type_id: "Listing type id",
                        stop_time: "Stop time",
                        condition: "Condition",
                        permalink: "Permalink",
                        thumbnail: "Thumbnail",
                        accepts_mercadopago: true,
                        category_id: "Category id",
                        official_store_id: 0,
                        catalog_product_id: "Catalog product id",
                        tags:["tags01", "tags01", "tags03"],
                        catalog_listing: true)
    
}
