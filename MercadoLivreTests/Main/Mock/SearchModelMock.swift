//
//  SearchModelMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class SearchModelMock: NSObject {

    static var mock = SearchModel(site_id: "Site ID",
                            query: "Query",
                            results: [ResultsMock.mock, ResultsMock.mock, ResultsMock.mock],
                            secondary_results : ["Secondary", "Secondary", "Secondary"],
                            related_results : ["Related Results", "Related Results"])
    
}
