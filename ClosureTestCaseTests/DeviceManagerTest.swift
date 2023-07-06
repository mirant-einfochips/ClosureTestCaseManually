//
//  DeviceManager.swift
//  ClosureTestCaseTests
//
//  Created by Mirant Patel on 05/07/23.
//

import XCTest
@testable import ClosureTestCase

final class DeviceManagerTest: XCTestCase {
    
    var testDevice: DeviceManager!
    
    override func setUp() {
        super.setUp()
        
        testDevice = DeviceManager()
    }
    
    func testExample() throws {
        let expectation = XCTestExpectation(description: "Retrieve configured Wi-Fi list")
        
        testDevice.getWifiList { mike in
            XCTAssertNotNil(mike)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 3.0)
    }

}
