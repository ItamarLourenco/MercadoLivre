//
//  MainPresenter.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol MainPresenterPrococol {
    func prensetMainData(response: SearchModel)
    func presentErrorAlert()
    func presentEmptyState()
    func showProgress()
    func hideProgress()
}

class MainPresenter: MainPresenterPrococol {
    var mainViewController: MainViewControllerProtocol?

    func prensetMainData(response: SearchModel) {
        mainViewController?.displayHomeData(response: response)
    }
    
    func presentErrorAlert() {
        mainViewController?.displayErrorAlert()
    }
    
    func showProgress(){
        mainViewController?.showProgress()
    }
    
    func hideProgress(){
        mainViewController?.hideProgress()
    }
    
    func presentEmptyState(){
        mainViewController?.displayEmptyState()
    }
    

}
