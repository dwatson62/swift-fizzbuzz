//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 29/12/2015.
//  Copyright © 2015 Daryl Watson. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
  
  let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
  func testIsDivisibleByThree() {
    let result = brain.isDivisibleByThree(3)
    XCTAssertEqual(result, true)
  }
  
  func testIsNotDivisibleByThree() {
    let result = brain.isDivisibleByThree(1)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFive() {
    let result = brain.isDivisibleByFive(5)
    XCTAssertEqual(result, true)
  }
  
  func testIsNotDivisibleByFive() {
    let result = brain.isDivisibleByFive(7)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(15)
    XCTAssertEqual(result, true)
  }
  
  func testIsNotDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(17)
    XCTAssertEqual(result, false)
  }
  
  func testSayFizz() {
    let result = brain.check(3)
    XCTAssertEqual(result, Move.Fizz)
  }
  
  func testSayBuzz() {
    let result = brain.check(5)
    XCTAssertEqual(result, Move.Buzz)
  }
  
  func testSayFizzBuzz() {
    let result = brain.check(15)
    XCTAssertEqual(result, Move.FizzBuzz)
  }
  
  func testSayOne() {
    let result = brain.check(1)
    XCTAssertEqual(result, Move.Number)
  }
    
}
