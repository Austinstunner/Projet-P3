//
//  SelectingMenu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//Menu de selection de l'ecran titre

func chooseMenu() {
    print("""

                        Choose an option :

                [1]Play                   [2]Rules

        """)
    
    if let choise = readLine() {
        switch choise {
        case "1":
            play()
            
        case "2":
            rules()
            passDialogue()
            chooseMenu()
            
        default:
            print("I don't understand")
            chooseMenu()
        }
    }
}
