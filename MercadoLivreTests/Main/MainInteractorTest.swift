//
//  MainInteractorTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class MainInteractorTest: XCTestCase {
    
    var mainInteractor: MainInteractor = MainInteractor()
    var presenter = MainPresenterMock()
    var repository = MainRepositoryMock()

    override func setUp() {
        mainInteractor.presenter = presenter
        mainInteractor.repository = repository
    }

    func testPresentShowProgress(){
        mainInteractor.fetchMainData(search: "teste")
        XCTAssertTrue(presenter.presentShowProgressCalled)
    }
    
    func testPresentHideProgress(){
        mainInteractor.fetchMainData(search: "teste")
        
        XCTAssertTrue(presenter.presentHideProgressCalled)
    }
    
    func testFetchMainDataSuccess() {
        mainInteractor.fetchMainData(search: "teste")
        
        XCTAssertEqual(presenter.presentMainCataSearchModel, SearchModelMock.mock)
        XCTAssertTrue(presenter.presentMainDataCalled)
    }

    func testFetchMainDataError() {
        repository.shouldFailRequest = true
        mainInteractor.fetchMainData(search: "teste")
        
        XCTAssertTrue(presenter.presentErrorAlertCalled)
    }
}

