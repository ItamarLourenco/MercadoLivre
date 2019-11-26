//
//  DetailMainViewControllerMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class DetailViewControllerMock: DetailViewControllerProtocol {
    

    var displayDetailDataCalled = false
    var displayDetailDataResponse:ItemModel?
    
    var displayErrorAlertCalled = false
    var displayEmptyStateCalled = false
    var showProgressCalled = false
    var hideProgressCalled = false
    
    var setImageViewCalled = false
    var setProductTitleCalled = false
    var setDescTitleCalled = false
    var setPriceCalled = false
    

    func displayDetailData(response: ItemModel) {
        displayDetailDataCalled = true
        displayDetailDataResponse = response
    }
    
    func displayErrorAlert() {
        displayErrorAlertCalled = true
    }
    
    func displayEmptyState() {
        displayEmptyStateCalled = true
    }
    
    func showProgress(){
        showProgressCalled = true
    }
    
    func hideProgress(){
        hideProgressCalled = true
    }
    
    func setImageView(from: String) {
        setImageViewCalled = true
    }
    
    func setProductTitle(title: String) {
        setProductTitleCalled = true
    }
    
    func setDesc(desc: String) {
        setDescTitleCalled = true
    }
    
    func setPrice(price: String) {
        setPriceCalled = true
    }
}
