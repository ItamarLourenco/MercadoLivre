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
    var lastView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lastView = self.view
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

    
    func originalView() {
        self.view = self.lastView
    }
    
    func showScreenError() {
        DispatchQueue.main.async {
            let view = UINib(nibName: "ScreenError", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
            view.frame = self.view.bounds
            let filteredSubviews:[UIButton] = view.subviews.filter({ $0 is UIButton } ) as! [UIButton]
            filteredSubviews.first?.addTarget(self, action: #selector(self.tryAgain(_:)), for: .touchUpInside)
            
            self.view = view
        }
    }
    
    func showEmptyState() {
        DispatchQueue.main.async {
            let view = UINib(nibName: "EmptyState", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
            view.frame = self.view.bounds
            self.view = view
        }
    }
    
    @objc public func tryAgain(_ sender: UIButton?) {
        originalView()
    }
    
    func performSearchRequest(text: String) {
        // Override
    }
}



extension BaseViewController: UISearchBarDelegate{

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self,
                                     selector: #selector(BaseViewController.performSearch),
                                     userInfo: searchText, repeats: false)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        self.performSearchRequest(text: searchBar.text ?? "")
        timer.invalidate()
        searchBar.resignFirstResponder()
    }
    
    
    @objc func performSearch() {
        self.performSearchRequest(text: searchBar.text ?? "")
        timer.invalidate()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        timer.invalidate()
    }
    
}
