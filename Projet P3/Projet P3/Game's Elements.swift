// Création de l'Ecran Titre

func home() {
    print("""

                                                              WORLD OF WARCRAFT : RACE'S WAR


""")
}

// Création des Règles du jeu

func rules() {
    print("""

                                                                    COMMENT CA MARCHE ?

Les règles sont simple :

le joueur n°1 séléctionne un personnage parmis les trois disponibles.
une fois le personnage du joueur n°1 sélectionné, c'est au tour du joueur n°2 de sélectionner le sien et de valider afin de démarrer la partie



""")
}


// Création du premier Menu-------

func firstMenu() {
    print("""
                                                [1] PLAY                                                           [2] RULES
        """)
}

// Création des choix

func firstStep() {
    
    firstMenu()

    if let choiseFirstMenu = readLine() {
        switch choiseFirstMenu {
        case "1":
            SelectPlayer1()
            
        case "2":
            rules()
            returnFirstStep()
        default :
            print("""
                
                                                                        I don't understand
""")
            firstStep()
        }
    }
}

// Création du retour après appuie

func returnFirstStep() {
    
    if readLine() != nil {
        firstStep()
    }
}


// création du Menu PLAY


func SelectPlayer1() {
    
    print("""
        Player 1, select your character !
               
 [1] Thrall          [2] Sylvanas         [3] Bain

""")
    
    if let choiseCharacter = readLine() {
        switch choiseCharacter {
        case "1":
            descriptionOfThrall()
        case "2":
            descriptionOfSylvanas()
        case "3":
            descriptionOfBain()
        default:
            print("je ne comprend pas")
        
        }
    }
}

// Description des Personnages Jouable

func descriptionOfThrall() {
    print("thrall est un orc, le séletionner ? [Oui] ou [Non] ?1")
    if let selection = readLine() {
        switch selection {
        case "oui":
            print("")
           // selection de p1Thrall() et lancement menu selection player 2
            
        case "non":
            returnCharacterSheet1()
        default:
            print("i don't understand")
            descriptionOfThrall()
        }
    }
}

func descriptionOfSylvanas() {
    print("sylvanas est une elf de la nuit")
}

func descriptionOfBain() {
    print("Bain est un tauren")
}

// retour Fiche Personnages Player 1

func returnCharacterSheet1() {
    if readLine() != nil {
        SelectPlayer1()
    }
}
