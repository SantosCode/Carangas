//
//  CarangasUITests.swift
//  CarangasUITests
//
//  Created by Eric Alves Brito on 22/10/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest

class CarangasUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        // Para o teste em caso de falha
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        //Given
        let app = XCUIApplication()
        app.launch() //Abrir o app
        
        //When
        let cell = app.tables["carsListTable"].cells.firstMatch
        XCTAssertTrue(cell.waitForExistence(timeout: 5.0))
        
        let cellTitleLabelText = cell.staticTexts["carsCellTitle"].label
        XCTAssertFalse(cellTitleLabelText.isEmpty)
        cell.tap()
        
        //Then
        XCTAssertTrue(app.navigationBars[cellTitleLabelText].exists, "Tela errada")
    }

}
