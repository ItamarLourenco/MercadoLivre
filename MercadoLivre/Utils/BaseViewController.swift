//
//  BaseViewController.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    let searchBar = UISearchBar()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barTintColor = Colors.yellow
    }
    
    override func viewDidLayoutSubviews() {
        createSearchBar()
    }
    
    func createSearchBar() {
        searchBar.showsCancelButton = true
        searchBar.placeholder = "Buscar"
        searchBar.delegate = self
        (searchBar.value(forKey: "cancelButton") as! UIButton).setTitle("Cancelar", for: .normal)
        
        self.navigationItem.titleView = searchBar
    }
    
    func performSearchRequest(text: String) {
        
    }
    
}



extension BaseViewController: UISearchBarDelegate{

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(BaseViewController.performSearch),
                                     userInfo: searchText, repeats: false)
    }
    
    @objc func performSearch() {
        self.performSearchRequest(text: searchBar.text ?? "")
        timer.invalidate()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        searchBar.text = ""
    }

}
