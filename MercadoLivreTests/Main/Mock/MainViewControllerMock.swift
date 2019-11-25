//
//  MainViewControllerTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class MainViewControllerMock: MainViewControllerProtocol {
    
    var displayHomeDataCalled = false
    var displayHomeDataResponse: SearchModel?
    
    var displayErrorAlertCalled = false
    var displayEmptyStateCalled = false
    var showProgressCalled = false
    var hideProgressCalled = false
    
    
    func displayHomeData(response: SearchModel) {
        displayHomeDataCalled = true
        displayHomeDataResponse = response
    }
    
    func displayErrorAlert() {
        displayErrorAlertCalled = true
    }
    
    func displayEmptyState() {
        displayEmptyStateCalled = true
    }
    
    func showProgress() {
        showProgressCalled = true
    }
    
    func hideProgress() {
        hideProgressCalled = true
    }
    

}
