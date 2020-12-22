//
//  SelectingMenu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//-----------------------------------------------------\\
//----------- SELECTING MENU OF SCREEN TITLE -----------\\
//-------------------------------------------------------\\

func chooseMenu() {
    print("""

                        Choose an option :


        [1] Play                   [2] Rules                  [3] Lore

        """)
    
    if let choise = readLine() {
        switch choise {
        case "1":
            print("""

                You're going to enter on the world of Kingdom Hearts,
                                    Continue ?

                    [1] Yes !                     [2] No, let me some times !
                """)
            if let info = readLine() {
                switch info {
                case "1":
                    play()
                case "2":
                    chooseMenu()
                default:
                    print("Huh ? Your dissent forces me to punish you ! Go back to the beginning !")
                    passDialogue()
                    chooseMenu()
                    
                    
                }
            }
            
        case "2":
            rules()
            passDialogue()
            chooseMenu()
            
        case "3":
            entrance()
            passDialogue()
            chooseMenu()
            
        default:
            print("I don't understand")
            chooseMenu()
        }
    }
}

