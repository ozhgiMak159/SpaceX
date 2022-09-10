//
//  SpaceXTests.swift
//  SpaceXTests
//
//  Created by Maksim  on 10.09.2022.
//

import XCTest
@testable import SpaceX

class SpaceXTests: XCTestCase {
    
    var networkManager: NetworkManager?
    
    override func setUp() {
        super.setUp()
        networkManager = NetworkManager.shared
    }

    override func tearDown() {
       super.tearDown()
        networkManager = nil
    }

    func testExample()  {
        
    }

    
    
}
