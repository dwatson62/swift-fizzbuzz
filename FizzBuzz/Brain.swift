//
//  Brain.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 29/12/2015.
//  Copyright © 2015 Daryl Watson. All rights reserved.
//

import Foundation

class Brain: NSObject {
  
  func isDivisibleBy(divisor: Int, number: Int) -> Bool {
    return number % divisor == 0
  }
  
  func isDivisibleByThree(number: Int) -> Bool {
    return isDivisibleBy(3, number: number)
  }
  
  func isDivisibleByFive(number: Int) -> Bool {
    return isDivisibleBy(5, number: number)
  }
  
  func isDivisibleByFifteen(number: Int) -> Bool {
    return isDivisibleBy(15, number: number)
  }
  
  func check(number: Int) -> Move {
    if isDivisibleByFifteen(number) {
      return Move.FizzBuzz
    } else if isDivisibleByThree(number) == true {
      return Move.Fizz
    } else if isDivisibleByFive(number) == true {
      return Move.Buzz
    } else {
      return Move.Number
    }
  }
}