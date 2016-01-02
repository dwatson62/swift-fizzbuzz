//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 02/01/2016.
//  Copyright © 2016 Daryl Watson. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
  
  let numberButton = XCUIApplication().buttons["numberButton"]
  let fizzButton = XCUIApplication().buttons["fizzButton"]
  let buzzButton = XCUIApplication().buttons["buzzButton"]
  let fizzbuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
  
    override func setUp() {
      super.setUp()
      continueAfterFailure = false
      XCUIApplication().launch()
    }
    
    override func tearDown() {
      super.tearDown()
    }

  func testTapNumberButtonIncrementsScore() {
    numberButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "1")
  }
  
  func testTapNumberButtonTwiceIncrementsScore() {
    numberButton.tap()
    numberButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "2")
  }
  
  func testFizzButtonIncrementsScore() {
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "3")
  }
  
  func testBuzzButtonIncrementsScore() {
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "5")
  }
  
  func playTo14() {
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    buzzButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
  }
  
  func testTapFizzBuzzButtonIncrementsto15() {
    playTo14()
    
    fizzbuzzButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "15")
  }
  
  func testWrongAnswerResetsScore() {
    fizzbuzzButton.tap()
    XCUIApplication().alerts["Incorrect"].collectionViews.buttons["Okay"].tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "0")
  }

}
