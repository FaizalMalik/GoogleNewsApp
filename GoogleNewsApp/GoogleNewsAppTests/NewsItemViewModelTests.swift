//
//  NewsItemViewModelTests.swift
//  GoogleNewsAppTests
//
//  Created by Faizal on 20/06/19.
//  Copyright © 2019 Faizal. All rights reserved.
//

import XCTest

@testable import GoogleNewsApp

class NewsItemViewModelTests : XCTestCase{
    
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_TimeHrsAgo(){
        
       let timeAgo =  Date(timeIntervalSinceNow : -4 * 60 * 60).timeAgoForDisplay()

        XCTAssertEqual(timeAgo, "4 hrs ago")
    }
    
    func  test_TimeDaysAgo(){
        
        let timeAgo = Date(timeIntervalSinceNow : -5 * 60 * 60 * 24).timeAgoForDisplay()
        
        XCTAssertEqual(timeAgo, "5 days ago")
    }
    
    func test_TimeWeeksAgo(){
        
        
        let timeAgo = Date(timeIntervalSinceNow : -3 * 60 * 60 * 24 * 7).timeAgoForDisplay()

        XCTAssertEqual(timeAgo, "3 weeks ago")
    }
    
    func test_TimeNow(){
        
        let timeAgo = Date(timeIntervalSinceNow : 50).timeAgoForDisplay()

        XCTAssertEqual(timeAgo, "now")

    }
}
