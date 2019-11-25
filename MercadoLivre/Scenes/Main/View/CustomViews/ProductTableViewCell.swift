//
//  ProductTableViewCell.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    static var reusableIdentifier = String(describing: ProductTableViewCell.self)
    
    @IBOutlet weak var uiImageView:UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    public static func register(in tableView: UITableView) {
        tableView.register(UINib.init(nibName: reusableIdentifier,
                   bundle: Bundle.init(for: ProductTableViewCell.self)),
        forCellReuseIdentifier: reusableIdentifier)
    }
    
    public static func build(tableView: UITableView, indexPath: IndexPath) -> ProductTableViewCell{
        return tableView.dequeueReusableCell(withIdentifier: reusableIdentifier,
                                      for: indexPath) as! ProductTableViewCell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiImageView.layer.masksToBounds = true
        uiImageView.layer.cornerRadius = 5
    }

    
    
}
