//
//  Router.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

open class Router: NSObject {
    public static let sharedInstance = Router()
    
    open var openingViewController: UIViewController?
    
    open var navigationController: UINavigationController? {
        didSet {
            openingViewController = navigationController?.topViewController
        }
    }
    
    public static func enterInApp(from navigationController: UINavigationController) {
        sharedInstance.navigationController = navigationController
    }
    
    static func showDetailsViewController(id: String) {
        let detailViewController = DetailsViewController()
        
        let interactor = DetailInteractor()
        let presenter = DetailPresenter()
        detailViewController.interactor = interactor
        interactor.presenter = presenter
        presenter.detailViewController = detailViewController
        
        detailViewController.id = id
        
        sharedInstance.navigationController?.present(detailViewController, animated: true, completion: nil)
    }

}
