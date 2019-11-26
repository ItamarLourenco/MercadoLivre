//
//  ItemModelMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class ItemModelMock: NSObject {

    static var mock = ItemModel(id: "id",
                            site_id: "Site Id",
                            title: "Title",
                            subtitle: "Subtitle",
                            seller_id: 0,
                            category_id: "Category id",
                            official_store_id: 0,
                            price: 0.0,
                            base_price: 0.0,
                            original_price: 0.0,
                            currency_id: "Currency id",
                            initial_quantity: 0,
                            available_quantity: 0,
                            sold_quantity: 0,
                            pictures: [PicturesMock.mock, PicturesMock.mock, PicturesMock.mock],
                            permalink: "permalink")
}
