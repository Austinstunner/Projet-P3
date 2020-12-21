//
//  Menu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//-------------------------------------------------------------\\
//----------- FONCTION POUR LE PASSAGE DES DIALOGUES -----------\\
//---------------------------------------------------------------\\
func passDialogue() {
    print("Press enter to continue..")
    
    if readLine() != nil {
        
    }
}
//----------------------------------------------------------------------------------------------------------\\
//----------- DEFINITION DE LA FONCTION QUI REGROUPE L'ENSEMBLE DES ACTIONS DU MENU DE DEMARRAGE ------------\\
//------------------------------------------------------------------------------------------------------------\\

func startingGame() {
    screenTitle()
    chooseMenu()
}
