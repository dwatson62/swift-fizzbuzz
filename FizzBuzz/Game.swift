//
//  Game.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 29/12/2015.
//  Copyright © 2015 Daryl Watson. All rights reserved.
//

import Foundation

class Game: NSObject {
  
  var score: Int
  let brain: Brain
  
  override init() {
    score = 0
    brain = Brain()
    super.init()
  }
  
  func play(move: String) -> (right: Bool, score: Int) {
    let result = brain.check(score + 1)
    
    if result == move {
      score++
      return (true, score)
    } else {
      return (false, score)
    }
  }
  
}