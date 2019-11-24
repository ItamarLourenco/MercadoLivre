//
//  Api.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol BaseRequest {
    var type: Endpoint { get }
}

enum Endpoint: String{
    case search = "search"
}

class Api: NSObject {
    static let shared = Api()
    
    private let endpoint = "https://api.mercadolibre.com/sites/MLA/search?q="
    
    func requestObject<T: Decodable>(search: String,
                                     completion: @escaping (Result<T, Error>) -> ()) {
        
        guard let connectionURL = URLComponents(string: endpoint + search)?.url else {
            return
        }
        
        URLSession.shared.dataTask(with: connectionURL) { (data, response, error) in
            if let err = error {
                completion(.failure(err))
            }
            do {
                let object = try JSONDecoder().decode(T.self, from: data!)
                completion(.success(object))
            } catch let error {
                completion(.failure(error))
            }
        }.resume()
        
        
    }
}

extension UIImageView {
    func load(from url: URL, placeholder: UIImage? = nil) {
       image = placeholder

        ImageCache.shared.image(for: url) { [weak self] result in
            switch result {
            case .success(let image):
                self?.image = image

            case .failure:
                break
            }
        }
    }
}
