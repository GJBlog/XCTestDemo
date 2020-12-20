//
//  XCTestDemoTests.swift
//  XCTestDemoTests
//
//  Created by Guo on 2020/12/20.
//

import XCTest
@testable import XCTestDemo

class XCTestDemoTests: XCTestCase {

    override class func setUp() {
        print("setup")
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUpWithError")
    }

    override class func tearDown() {
        print("tearDown")
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDownWithError")
    }

    // 普通测试方法
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("testExample")
    }
    // 性能测试方法
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
