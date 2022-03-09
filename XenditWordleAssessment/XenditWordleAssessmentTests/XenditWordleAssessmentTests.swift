//
//  XenditWordleAssessmentTests.swift
//  XenditWordleAssessmentTests
//
//  Created by Apple on 09/03/22.
//

import XCTest
@testable import XenditWordleAssessment

class XenditWordleAssessmentTests: XCTestCase {
    var viewModel: WordleViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        viewModel = WordleViewModel()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // performed some unit test operations
    func testWordleViewModel() throws {
        XCTAssertNotNil(viewModel!.getTodayWordle())
        
        let totalGuessesCount = viewModel!.currentGuesses.count
        XCTAssertEqual(totalGuessesCount, 6)

        
        XCTAssertTrue(((viewModel?.letterPressed(letter: "H")) != nil))
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
    
}
