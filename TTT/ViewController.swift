//
//  ViewController.swift
//  TTT
//
//  Created by Ian Yang on 3/8/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    
    var player:Bool = true
    var game: Bool = true
    var board:[Int] = [
                        2,2,2,
                        2,2,2,
                        2,2,2
    ]
    
    var count: Int = 0
    
    
    
    func press(i: Int, player: Bool, button: UIButton){
        if game == true{
            if board[i] == 2 {
                if player != false {
                    board[i] = 0
                    button.backgroundColor = UIColor.red
                    winnerLabel.text = "Blue player's turn"
                    self.player = false            }
                else {
                    board[i] = 1
                    button.backgroundColor = UIColor.blue
                    winnerLabel.text = "Red player's turn"
                    self.player = true
                }
                count+=1
                if count == 9{
                    winnerLabel.text = "Tie"
                }
            }
        check(arr: board)
            
        }
    }
    
    func check(arr: [Int]) {
        if arr[0] != 2 {
            if arr[0] == arr[1] && arr[0] == arr[2] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
            else if arr[0] == arr[3] && arr[0] == arr[6] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
            else if arr[0] == arr[4] && arr[0] == arr[8] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
        }
        if arr[1] != 2 {
            if arr[1] == arr[4] && arr[1] == arr[7] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
        }
        if arr[2] != 2 {
                print("everyday!")
            if arr[2] == arr[5] && arr[2] == arr[8] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
            else if arr[2] == arr[4] && arr[2] == arr[6] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
                }
            }
        if arr[3] != 2 {

            if arr[3] == arr[4] && arr[3] == arr[5] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
            }
        if arr[6] != 2 {
            if arr[6] == arr[7] && arr[6] == arr[8] {
                game = false
                if player == true {
                    winnerLabel.text = "Blue Player Wins"
                }
                else {
                    winnerLabel.text = "Red Player Wins"
                }
            }
        }
           
        
    }
    
    
    
    
    @IBAction func btn1pressed(_ sender: UIButton) {
        press(i : 0, player: player, button: btn1)
    }
    
    @IBAction func btn2pressed(_ sender: UIButton) {
        press(i : 1, player: player, button: btn2)
    }
    
    @IBAction func btn3pressed(_ sender: UIButton) {
        press(i : 2, player: player, button: btn3)
    }
    
    @IBAction func btn4pressed(_ sender: UIButton) {
        press(i : 3, player: player, button: btn4)
    }
    @IBAction func btn5pressed(_ sender: UIButton) {
        press(i : 4, player: player, button: btn5)
    }
    @IBAction func btn6pressed(_ sender: UIButton) {
        press(i : 5, player: player, button: btn6)
    }
    @IBAction func btn7pressed(_ sender: UIButton) {
        press(i : 6, player: player, button: btn7)
    }
    
    @IBAction func btn8pressed(_ sender: UIButton) {
        press(i : 7, player: player, button: btn8)
    }
    
    @IBAction func btn9pressed(_ sender: UIButton) {
        press(i : 8, player: player, button: btn9)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: UIButton) {
        board = [
            2,2,2,
            2,2,2,
            2,2,2
        ]
        btn1.backgroundColor = UIColor.black
        btn2.backgroundColor = UIColor.black
        btn3.backgroundColor = UIColor.black
        btn4.backgroundColor = UIColor.black
        btn5.backgroundColor = UIColor.black
        btn6.backgroundColor = UIColor.black
        btn7.backgroundColor = UIColor.black
        btn8.backgroundColor = UIColor.black
        btn9.backgroundColor = UIColor.black
        game = true
        player = true
        winnerLabel.text = "Red player's turn"
        count = 0
    }
    
}

