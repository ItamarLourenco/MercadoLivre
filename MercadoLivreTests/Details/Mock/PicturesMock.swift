//
//  PicturesMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class PicturesMock: NSObject {

    static var mock = ItemModel.Pictures(id: "id",
                                       url: "url",
                                       secure_url:"Secure url",
                                       size: "Size",
                                       max_size:"Max Size",
                                       quality: "quality")
}
