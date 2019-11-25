//
//  Api.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import Foundation

struct SearchModel : Codable {
	let site_id : String?
	let query : String?
	let results : [Results]?
	let secondary_results : [String]?
	let related_results : [String]?

 
    init(site_id: String, query: String, results: [Results], secondary_results : [String], related_results : [String]) {
        self.site_id = site_id
        self.query = query
        self.results = results
        self.secondary_results = secondary_results
        self.related_results = related_results
    }

}

extension SearchModel: Equatable {
    
    static func == (lhs: SearchModel, rhs: SearchModel) -> Bool {
        return lhs.site_id == rhs.site_id
            && lhs.query == rhs.query
            && lhs.results == rhs.results
            && lhs.secondary_results == rhs.secondary_results
            && lhs.related_results == rhs.related_results
    }
    
}
