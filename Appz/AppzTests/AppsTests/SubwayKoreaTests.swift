//
//  SubwayKoreaTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SubwayKoreaTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let subwayKorea = Applications.SubwayKorea()
        XCTAssertEqual(subwayKorea.scheme, "subwaykorea:")
        XCTAssertEqual(subwayKorea.fallbackURL, "http://blog.malangstudio.com")
    }
    
    func testOpen() {
        
        let action = Applications.SubwayKorea.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
