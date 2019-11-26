//
//  MainPresenterTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class MainPresenterTest: XCTestCase {
    
    var presenter: MainPresenter = MainPresenter()
    var viewMock: MainViewControllerMock = MainViewControllerMock()

    override func setUp() {
        presenter.mainViewController = viewMock
    }

    func testPrensetMainData() {
        presenter.prensetMainData(response: SearchModelMock.mock)
        
        XCTAssertEqual(viewMock.displayHomeDataResponse, SearchModelMock.mock)
        XCTAssertTrue(viewMock.displayHomeDataCalled)
    }
    
    func testPresentErrorAlert() {
        presenter.presentErrorAlert()
        
        XCTAssertTrue(viewMock.displayErrorAlertCalled)
    }
    
    func testPresentShowProgress(){
        presenter.presentShowProgress()
        
        XCTAssertTrue(viewMock.showProgressCalled)
    }
    
    func testPresentHideProgress(){
        presenter.presentHideProgress()
        
        XCTAssertTrue(viewMock.hideProgressCalled)
    }
    
    func testPresentEmptyState(){
        presenter.presentEmptyState()
        
        XCTAssertTrue(viewMock.displayEmptyStateCalled)
    }

}
