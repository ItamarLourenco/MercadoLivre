//
//  MainViewController.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol MainViewControllerProtocol{
    func displayHomeData(response: SearchModel)
    func displayErrorAlert()
    func showProgress()
    func hideProgress()
}

class MainViewController: BaseViewController {
    
    var interactor: MainInteractorProtocol?
    var searchModel: SearchModel?
    @IBOutlet var tableView: UITableView!
    @IBOutlet var indicatorView: UIActivityIndicatorView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        self.interactor = interactor
        interactor.presenter = presenter
        presenter.mainViewController = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.fetchMainData(search: "")
     
        self.tableView.separatorStyle = .none
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        ProductTableViewCell.register(in: tableView)
    }
    
    override func performSearchRequest(text: String){
        interactor?.fetchMainData(search: text)
    }
}

extension MainViewController: MainViewControllerProtocol{
    func displayHomeData(response: SearchModel) {
        self.searchModel = response
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func displayErrorAlert() {
        
    }
    
    func showProgress() {
        DispatchQueue.main.async {
            self.indicatorView.isHidden = false
            self.tableView.isHidden = true
        }
    }
    
    func hideProgress() {
        DispatchQueue.main.async {
            self.indicatorView.isHidden = true
            self.tableView.isHidden = false
        }
    }
}

extension MainViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.searchModel?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let result:Results = self.searchModel?.results![indexPath.row] else {return UITableViewCell()}
        
        let cell = ProductTableViewCell.build(tableView: tableView, indexPath: indexPath)
        cell.label.text = result.title
        cell.customImageView.load(url: URL(string: result.thumbnail!.replacingOccurrences(of: "http", with: "https", options: .literal, range: nil))!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56.0
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
