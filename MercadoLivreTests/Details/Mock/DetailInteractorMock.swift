//
//  DetailInteractorMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class DetailInteractorMock: DetailInteractorProtocol {
    
    var fetchDetailDataCalled = false
    var fetchDetailDataIdString:String?
    
    func fetchDetailData(id: String) {
        fetchDetailDataCalled = true
        fetchDetailDataIdString = id
    }
    

}
