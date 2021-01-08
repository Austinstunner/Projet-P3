//
//  Game+StartingGame.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation
extension Game {
    //------------------------------------------\\
    //----------- SWITCHING DIALOGUES -----------\\
    //--------------------------------------------\\
    func passDialogue() {
        print("Press enter to continue..")
        
        if readLine() != nil {
            
        }
    }
  
//-- Function who's init the game
    func startingGame() {
        screenTitle()
        chooseMenu()
    }
}
