//
//  GJPerformanceTests.swift
//  XCTestDemoTests
//
//  Created by Guo on 2020/12/20.
//

import XCTest

class GJPerformanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        var count = 0
        self.measure {
            // Put the code you want to measure the time of here.
            count += 1
            sleep(1)
            print("this is a performance mesasure function-count:\(count)")
        }
    }

}

class GJJsonList: Codable {
    let model: [GJJsonModel]
}

class GJJsonModel: Codable {
    let name: String
    let address: String
    let age: Int
}
