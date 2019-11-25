//
//  MainPresenterMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class MainPresenterMock: MainPresenterPrococol {
    
    var presentErrorAlertCalled = false
    var prensetEmptyStateCalled = false
    var presentShowProgressCalled = false
    var presentHideProgressCalled = false
    var presentMainCataSearchModel: SearchModel?
    var presentMainDataCalled = false
    
    
    func presentErrorAlert() {
        presentErrorAlertCalled = true
    }
    
    func presentEmptyState() {
        prensetEmptyStateCalled = true
    }
    
    func presentShowProgress() {
        presentShowProgressCalled = true
    }
    
    func presentHideProgress() {
        presentHideProgressCalled = true
    }
    
    func prensetMainData(response: SearchModel) {
        presentMainDataCalled = true
        presentMainCataSearchModel = response
    }
}
