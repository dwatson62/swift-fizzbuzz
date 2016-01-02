//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Daryl Watson on 29/12/2015.
//  Copyright © 2015 Daryl Watson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var game: Game?
  
  var gameScore: Int?

  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  func play(move: String) {
    guard let unwrappedGame = game else {
      print("Game is nil!")
      return
    }
    let response = unwrappedGame.play(move)
    gameScore = response.score
  }

}

