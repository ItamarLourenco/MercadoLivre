//
//  MainRepositoryMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class MainRepositoryMock: MainRepositoryProtocol {
    var shouldFailRequest = false
    
    func fetchMainData(search: String, completion: @escaping (Result<SearchModel, Error>) -> ()) {
        if shouldFailRequest {
            completion(.failure(ApiError.Generic))
        } else {
            completion(.success(SearchModelMock.mock))
        }
    }
    

}
