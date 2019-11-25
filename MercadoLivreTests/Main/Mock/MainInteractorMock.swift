//
//  MainInteractorMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class MainInteractorMock: MainInteractorProtocol {
    
    var fetchMainDataCalled = false
    var fetchMainDataSearchString: String?
    
    func fetchMainData(search: String) {
        fetchMainDataCalled = true
        fetchMainDataSearchString = search
    }
}
