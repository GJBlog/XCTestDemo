//
//  GJAsynTests.swift
//  XCTestDemoTests
//
//  Created by Guo on 2020/12/20.
//

import XCTest

class GJAsynTests: XCTestCase {

    var expect: XCTestExpectation = XCTestExpectation(description: "this is a network Request")
    
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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testSendNetwork() {
        let expect = self.expectation(description: "this is a XCTestCase Expection")
        let urlSesssion = URLSession(configuration: URLSessionConfiguration.default)
        guard let url = URL(string: "https://infoline-test.youdao.com/infoline/toolbar/data/v2?KEYFROM=mdict.8.2.0.iphonepro") else { return }
        let dataTask = urlSesssion.dataTask(with: url) { (data, response, error) in
            XCTAssert(data != nil, "have no data")
            expect.fulfill()
        }
        dataTask.resume()
        // 新增方法
        wait(for: [expect], timeout: 10.0)
    }
}
