//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 29/12/2015.
//  Copyright © 2015 Daryl Watson. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
  
    let game = Game()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

  func testGameStartsAtZero() {
    XCTAssertTrue(game.score == 0)
  }
  
  func testOnPlayScoreIncremented() {
    game.play("1")
    XCTAssertTrue(game.score == 1)
  }
  
  func testIfMoveIsRight() {
    game.score = 2
    let result = game.play("Fizz")
    XCTAssertEqual(result, true)
  }
  
  func testIfMoveIsWrong() {
    game.score = 1
    let result = game.play("Fizz")
    XCTAssertEqual(result, false)
  }
  
  func testCorrectBuzz() {
    game.score = 4
    let result = game.play("Buzz")
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectBuzz() {
    game.score = 3
    let result = game.play("Buzz")
    XCTAssertEqual(result, false)
  }
  
  func testCorrectFizzBuzz() {
    game.score = 14
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectFizzBuzz() {
    game.score = 3
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, false)
  }
  
  func testCorrectNumber() {
    game.score = 1
    let result = game.play("2")
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectNumber() {
    game.score = 2
    let result = game.play("3")
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    game.play("Fizz")
    XCTAssertEqual(game.score, 1)
  }

}
