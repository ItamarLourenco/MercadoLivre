//
//  DetailPresenterTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class DetailPresenterTest: XCTestCase {
    
    var presenter: DetailPresenter = DetailPresenter()
    var viewMock: DetailViewControllerMock = DetailViewControllerMock()

    override func setUp() {
        presenter.detailViewController = viewMock
    }

    func testPresentDetailData() {
        presenter.prensetDetailData(response: ItemModelMock.mock)
        
        XCTAssertEqual(viewMock.displayDetailDataResponse, ItemModelMock.mock)
        XCTAssertTrue(viewMock.displayDetailDataCalled)
    }
    
    func testPresentErrorAlert() {
        presenter.presentErrorAlert()
        
        XCTAssertTrue(viewMock.displayErrorAlertCalled)
    }
    
    func testPresentShowProgress(){
        presenter.showProgress()
        
        XCTAssertTrue(viewMock.showProgressCalled)
    }
    
    func testPresentHideProgress(){
        presenter.hideProgress()
        
        XCTAssertTrue(viewMock.hideProgressCalled)
    }
    
    func testPresentEmptyState(){
        presenter.presentEmptyState()
        
        XCTAssertTrue(viewMock.displayEmptyStateCalled)
    }

}
