//
//  MenuVC.swift
//  PongGame
//
//  Created by Artem Palyutin on 25.09.2021.
//

import Foundation
import UIKit

enum GameType {
    case easy
    case medium
    case hard
    case twoPlayer
}


class MenuVC: UIViewController {
    
    @IBAction func TwoPlayer(_ sender: Any) {
        moveTo(game: .twoPlayer)
    }
    
    @IBAction func Easy(_ sender: Any) {
        moveTo(game: .easy)
    }
    
    @IBAction func Medium(_ sender: Any) {
        moveTo(game: .medium)
    }
    
    @IBAction func Hard(_ sender: Any) {
        moveTo(game: .hard)
    }
    
    func moveTo(game: GameType) {
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        
        currentGameType = game
        
        self.navigationController?.pushViewController(gameVC, animated: true)
        
    }
    
}
