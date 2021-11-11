//
//  CarangasTests.swift
//  CarangasTests
//
//  Created by Eric Alves Brito on 22/10/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest

class CarangasTests: XCTestCase {
    
    var viewModel: String!
    
    override class func setUp() {
        print("1")
    }

    override func setUpWithError() throws {
        print("2")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func setUp() {
        print("3")
    }
    
    override func tearDown() {
        print("4")
    }
    
    override func tearDownWithError() throws {
        print("5")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override class func tearDown() {
        print("6")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
