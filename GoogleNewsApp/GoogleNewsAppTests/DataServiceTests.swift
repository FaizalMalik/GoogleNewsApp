//
//  DataServiceTests.swift
//  GoogleNewsAppTests
//
//  Created by Faizal on 20/06/19.
//  Copyright © 2019 Faizal. All rights reserved.
//

import XCTest
@testable import GoogleNewsApp

class DataServiceTests: XCTestCase {
    
    func test_CancelRequest() {
        
        // giving a "previous" session
        NewsFetchService.shared.fetchDatafromServer(fromPage: 1, { _ in
             // ignore call
        })
        
        // Expected to task nil after cancel
        NewsFetchService.shared.cancelPreviousTask()
        XCTAssertNil(NewsFetchService.shared.task, "Expected task nil")
    }
}

