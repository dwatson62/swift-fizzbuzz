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
    game.play(Move.Number)
    XCTAssertTrue(game.score == 1)
  }
  
  func testIfMoveIsRight() {
    game.score = 2
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfMoveIsWrong() {
    game.score = 1
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testCorrectBuzz() {
    game.score = 4
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectBuzz() {
    game.score = 3
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testCorrectFizzBuzz() {
    game.score = 14
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectFizzBuzz() {
    game.score = 3
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testCorrectNumber() {
    game.score = 1
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIncorrectNumber() {
    game.score = 2
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    game.play(Move.Fizz)
    XCTAssertEqual(game.score, 1)
  }
  
  func testPlayShouldReturnIfMoveRight() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturnNewScore() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.score)
  }

}
