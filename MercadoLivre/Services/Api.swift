//
//  Api.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit
import Kingfisher

enum ApiError: Error{
    case Generic
}

enum Endpoint: String {
    case search = "sites/MLA/search?q=%@"
    case item = "items/%@"
}


class Api: NSObject {
    static let shared = Api()
    static private let endpoint = "https://api.mercadolibre.com/"

    func requestObject<T: Decodable>(endpoint: Endpoint,
                                     params: String,
                                     completion: @escaping (Result<T, Error>) -> ()) {
    
        let handleParams = params.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        let handleUrl = String(format: (Api.endpoint + endpoint.rawValue), handleParams)
        
        
        guard let connectionURL = URLComponents(string: handleUrl)?.url else {
            return
        }
        
        URLSession.shared.dataTask(with: connectionURL) { (data, response, error) in

            if let err = error {
                completion(.failure(err))
            }
            do {
                if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
                    throw ApiError.Generic
                }
                
                guard let data = data else {
                    throw ApiError.Generic
                }
                
                let object = try JSONDecoder().decode(T.self, from: data)
                completion(.success(object))
            } catch let error {
                completion(.failure(error))
            }
        }.resume()
        
        
    }
}

extension UIImageView {
    func load(from url: String, placeholder: UIImage? = nil) {
        kf.setImage(with: URL(string: url),
        placeholder: UIImage(named: "placeholderImage"),
        options: [.transition(.fade(1)), .cacheOriginalImage],
        progressBlock: .none)
    }
}
