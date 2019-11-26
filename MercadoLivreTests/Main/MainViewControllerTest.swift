//
//  MainViewControllerTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class MainViewControllerTest: XCTestCase {

    var view: MainViewController = MainViewController()
    var interactor: MainInteractorMock = MainInteractorMock()
    var window: UIWindow!
    
    override func setUp() {
        view.interactor = interactor
        window = UIWindow(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        loadView()
    }
    
    func loadView() {
        window.addSubview(view.view)
        RunLoop.current.run(until: Date())
    }

    func testDisplayHomeData() {
        view.setup()
        
        XCTAssertEqual(interactor.fetchMainDataSearchString, "Motorola")
        XCTAssertTrue(interactor.fetchMainDataCalled)
    }
    
    

}
