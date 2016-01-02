//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 02/01/2016.
//  Copyright © 2016 Daryl Watson. All rights reserved.
//


import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
  
  var viewController : ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
    UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
    
    let _ = viewController.view
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testMove1IncrementsScore() {
    viewController.play("1")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testMove2IncrementScore() {
    viewController.play("1")
    viewController.play("2")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testMove3IncrementScore() {
    viewController.game?.score = 2
    viewController.play("Fizz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 3)
  }
  
  func testMove5IncrementScore() {
    viewController.game?.score = 4
    viewController.play("Buzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 5)
  }
  
  func testMove15IncrementScore() {
    viewController.game?.score = 14
    viewController.play("FizzBuzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 15)
  }
  
  func testIncorrectMoveDoesNotIncrementScore() {
    viewController.game?.score = 2
    viewController.play("3")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testHasAGame() {
    XCTAssertNotNil(viewController.game)
  }
  
}