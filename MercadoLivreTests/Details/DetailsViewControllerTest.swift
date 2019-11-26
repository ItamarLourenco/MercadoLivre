    //
//  DetailsViewControllerTest.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import XCTest

class DetailsViewControllerTest: XCTestCase {

    var view: DetailsViewController = DetailsViewController()
    var interactor: DetailInteractorMock = DetailInteractorMock()
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

    func testSetProductTitle(){
        view.setProductTitle(title: "Produto")
        
        XCTAssertEqual(view.productTitle.text, "Produto")
    }
    
    func testSetDesc(){
        view.setDesc(desc: "Desc")
        
        XCTAssertEqual(view.desc.text, "Desc")
    }
    
    func testSetPrice() {
        view.setPrice(price: "Price")
        
        XCTAssertEqual(view.price.text, "Price")
    }
}
