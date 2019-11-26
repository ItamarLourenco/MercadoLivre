//
//  DetailInteractorTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class DetailInteractorTest: XCTestCase {
    
    var detailsInteractor: DetailInteractor = DetailInteractor()
    var presenter = DetailPresenterMock()
    var repository = DetailRepositoryMock()

    override func setUp() {
        detailsInteractor.presenter = presenter
        detailsInteractor.repository = repository
    }

    func testPresentShowProgress(){
        detailsInteractor.fetchDetailData(id: "000")
        XCTAssertTrue(presenter.showProgressCalled)
    }
    
    func testPresentHideProgress(){
        detailsInteractor.fetchDetailData(id: "000")
        
        XCTAssertTrue(presenter.hideProgressCalled)
    }
    
    func testFetchDetailDataSuccess() {
        detailsInteractor.fetchDetailData(id: "000")
        
        XCTAssertEqual(ItemModelMock.mock, presenter.presentDetailDataResponse)
        XCTAssertTrue(presenter.presentDetailDataCalled)
    }

    func testFetchMainDataError() {
        repository.shouldFailRequest = true
        detailsInteractor.fetchDetailData(id: "000")
        
        XCTAssertTrue(presenter.prensetErrorAlertCalled)
    }

}
