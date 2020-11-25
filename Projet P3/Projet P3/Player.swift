//
//  Player.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

/* TO DO : ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️

 CREER DEUX VARIABLES POUR STOCKER PLAYER1 ET PLAYER2
 
 FAIRE CHOISIR LE JOUEUR 1 ENTRE LES DEUX, JOUEUR 2 PRENDS AUTOMATIQUEMENT L'AUTRE
 
 LANCER LE JEU ENSUITE
 
 */





























class Player {
    var nameOfTheTeam: String
    var side: Side
    
    init(nameOfTheTeam: String, side: Side) {
        self.nameOfTheTeam = nameOfTheTeam
        self.side = side
    }
}



//------------------------------------Création des variables-------------------------------------------\\
var player1 = Player(nameOfTheTeam: "", side: Goodside())
var player2 = Player(nameOfTheTeam: "", side: Badside())
//-------------------------------------------------------------------------------------------------------\\

//------------------------------------------------------------------\\
//---------Création des Fonctions d'Initialisation des Joueurs--------\\
//----------------------------------------------------------------------\\

func initPlayer1() {
    print("""
      Player 1, Select the name of your team !
      """)
    nameOfPlayer1()
    choiseOfSideP1()
}

func initPlayer2() {
    print("""
      Player 2, Select the name of your team !
      """)
    nameOfPlayer2()
    choiseOfSideP2()
}

/*-------------------------------------------------------------------*/



//--------------------------------------------------------------------\\
//---------------------------CODE SELECTION JOUEUR 1-------------------\\
//----------------------------------------------------------------------\\


//---------Attribution du Nom
func nameOfPlayer1() {
    player1.nameOfTheTeam = readLine()!
    
    while player1.nameOfTheTeam == String() {
        initPlayer1()
    }
    
    
}


//--------Attribution du Côté
func choiseOfSideP1(){
    
    print("""
        Select your side !
        [Good] or [Bad]

""")
    
    if let choise = readLine() {
        switch choise {
        case "good":
            player1.side = Goodside()
        case "bad":
            player1.side = Badside()
        default:
            print("""
                    i dont understand !

                    Select your side !
                    [Good] or [Bad]

        """)
            choiseOfSideP1()
        }
    }
    if player1.side === Goodside() {
    }
    print("joueur 1 a pris \(player1.side)")
}
/*-----------------------------------------------------------------------*/




//--------------------------------------------------------------------\\
//---------------------------CODE SELECTION JOUEUR 2-------------------\\
//----------------------------------------------------------------------\\

//---------Attribution du Nom
func nameOfPlayer2() {
    player2.nameOfTheTeam = readLine()!
    
    while player2.nameOfTheTeam == String() {
        initPlayer2()
    }
    
    if player2.nameOfTheTeam == player1.nameOfTheTeam {
        print("This name is already taken, choose another one")
        nameOfPlayer2()
    }
    
    
}
//--------Attribution du Côté
func choiseOfSideP2() {
    if player1.side === Goodside() {
        player2.side = Badside()
    }
    
    if player1.side === Badside() {
        player2.side = Goodside()
    }
    print("player 2 take the other side automaticly \(player2.side)")
}
























/*
 func createTeam() {
 let team = [1 : [Character](), 2 : [Character](), 3 : [Character]()]
 switch [1] {
 case 1:
 print("")
 default:
 print("")
 
 }
 }
 
 enum WeatherType {
 case sun, cloud, rain, wind, snow
 }
 
 func getHaterStatus(weather: WeatherType) -> String? {
 switch weather {
 case .sun:
 return nil
 case .cloud, .wind:
 return "dislike"
 case .rain:
 return "hate"
 }
 }
 */
