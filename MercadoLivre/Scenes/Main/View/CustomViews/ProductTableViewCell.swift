//
//  ProductTableViewCell.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var label: UILabel!

    
    static func register(in tableView: UITableView) {
        let reusableIdentifier = String(describing: self)
        tableView.register(UINib.init(nibName: reusableIdentifier,
                                      bundle: Bundle.init(for: ProductTableViewCell.self)),
                           forCellReuseIdentifier: reusableIdentifier)
    }
    
    static func build(tableView: UITableView, indexPath: IndexPath) -> ProductTableViewCell{
        return tableView.dequeueReusableCell(withIdentifier: String(describing: ProductTableViewCell.self), for: indexPath) as! ProductTableViewCell
    }

}
