//
//  DetailPresenterMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class DetailPresenterMock: DetailPresenterProtocol {

    
    var presentDetailDataCalled = false
    var presentDetailDataResponse:ItemModel?
    
    var prensetErrorAlertCalled = false
    var presentEmptyStateCalled = false
    var showProgressCalled = false
    var hideProgressCalled = false
    
    var setImageViewCelled = false
    var setProductTitleCalled = false
    var setDescCalled = false
    var setPriceCalled = false
    
    func prensetDetailData(response: ItemModel) {
        presentDetailDataCalled = true
        presentDetailDataResponse = response
    }
    
    func presentErrorAlert() {
        prensetErrorAlertCalled = true
    }
    
    func presentEmptyState() {
        presentEmptyStateCalled = true
    }
    
    func showProgress() {
        showProgressCalled = true
    }
    
    func hideProgress() {
        hideProgressCalled = true
    }
    
    func setImageView(from: String) {
        setImageViewCelled = true
    }
    
    func setProductTitle(title: String) {
        setProductTitleCalled = true
    }
    
    func setDesc(desc: String) {
        setDescCalled = true
    }
    
    func setPrice(price: Double) {
        setPriceCalled = true
    }
}
