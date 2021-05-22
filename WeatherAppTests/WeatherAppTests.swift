//
//  WeatherAppTests.swift
//  WeatherAppTests
//
//  Created by admin on 20/5/21.
//

import XCTest
@testable import WeatherApp

class WeatherAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testResponses() throws {
        let weatherService = WeatherService.shared
        let icons = weatherService.icons
        let json = weatherService.json
        
        XCTAssertNotNil(icons)
        XCTAssertNoThrow(json)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
