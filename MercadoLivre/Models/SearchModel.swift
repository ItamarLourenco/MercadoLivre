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
}
