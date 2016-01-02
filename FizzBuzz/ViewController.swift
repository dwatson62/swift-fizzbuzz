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
  
  var gameScore: Int? {
    didSet {
      guard let unwrappedScore = gameScore else {
        print("gameScore is nil")
        return
      }
      numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
    }
  }

  @IBOutlet weak var numberButton: UIButton!
  
  @IBOutlet weak var fizzBuzzButton: UIButton!
  
  @IBOutlet weak var fizzButton: UIButton!
  
  @IBOutlet weak var buzzButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
    
    guard let checkedGame = game else {
      print("Game is nil!")
      return
    }
    
    gameScore = checkedGame.score
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  func play(move: Move) {
    guard let unwrappedGame = game else {
      print("Game is nil!")
      return
    }
    let response = unwrappedGame.play(move)
    gameScore = response.score
    if response.right == false {
      showIncorrectAlert()
      resetGame(unwrappedGame)
    }
  }
  
  func showIncorrectAlert() {
    let alert = UIAlertController(title: "Incorrect", message: "That was the wrong answer.", preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
    self.presentViewController(alert, animated: true, completion: nil)
  }
  
  func resetGame(unwrappedGame: Game) {
    gameScore = 0
    unwrappedGame.score = 0
  }

  @IBAction func buttonTapped(sender: UIButton) {
    switch sender {
    case numberButton:
      play(Move.Number)
    case fizzButton:
      play(Move.Fizz)
    case buzzButton:
      play(Move.Buzz)
    case fizzBuzzButton:
      play(Move.FizzBuzz)
    default:
      print("Invalid selection")
    }
  }
  
}

