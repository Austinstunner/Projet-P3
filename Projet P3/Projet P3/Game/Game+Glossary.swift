//
//  Game+Glossary.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 31/12/2020.
//

import Foundation

extension Game {
    
    //-- function who's display glossary of the game
    
    func glossary() {
        
        print("""
                            Welcome in the Glossary of the game !
        
        Here you can learn more about characters, items or history from the Kingdom Hearts's licence.

        Type the number of a term to learn more about.
        
         [1] King Mickey
         [2] Jiminy Cricket
         [3] Sora
         [4] Donald
         [5] Goofy
         [6] Xehanort
         [7] Kingdom Heart
         [8] Keyblade
         [9] Necropolis of keyblades
        [10] χ-Blade

        [11] Return to the selecting menu
        """)
        
        if let choise = readLine() {
            switch choise {
            case"1":
                print("""
                
                King Mickey is one of the main characters in the Kingdom Hearts licence, as well as one of the most powerful.

                Ruler of the Disney Castle and companion of Queen Minnie, he travels from world to world fighting the Darkness
                Despite his status as a Master of the Dark Realm Keyblade, he chooses to live in the Light.
                
                """)
                passDialogue()
                glossary()
            case"2":
                print("""
                
                Jiminy Cricket is, as the name suggests, a wise and benevolent locust.
                He accompanies Sora and his companions as a chronicler, writing the tale of their adventures.

                """)
                passDialogue()
                glossary()
            case"3":
                print("""
                
                Sora is the hero of the Kingdom Hearts series, as well as a chosen one of the Keyblade.
                
                Living on the Isles of Doom with his best friends, he wanted to leave his world with them, using a raft, and discover more.
                However, the night before their departure, the island was attacked by the Darkness, who destroyed the heart of this world.

                """)
                passDialogue()
                glossary()
            case"4":
                print("""

                Donald Duck is one of the main characters in the Kingdom Hearts licence.
                
                He is the magician of the Royal Court, in the service of King Mickey.
                He lives at the Disney Castle with Goofy and other subjects.

                Choleric, he still knows how to use magic.

                At the time, when the king disappeared, he went in search, with Goofy, for a mysterious "key".
                They met Sora and understood that they had to accompany him to find their king.

                """)
                passDialogue()
                glossary()
            case"5":
                print("""
                
                Goofy is one of the main characters in the Kingdom Hearts licence.

                Donald's companion, Goofy is the captain of the Royal Guard at Disney Castle.
                A bit simplistic but sympathetic, he fights with the help of his shield and support actions.
                
                His work is not very demanding, because the castle is in a peaceful country.

                """)
                passDialogue()
                glossary()
            case"6":
                print("""

                Master Xehanort is an overpowered and respected Keyblade master.

                Believing that Darkness should not be rejected, but used, his greatest ambition is to understand the events
                leading up to and following the Keyblade War, in order to reproduce it.

                Its ultimate goal is to acquire the power of Kingdom Hearts and its antithesis, the χ-blade.

                """)
                passDialogue()
                glossary()
                
            case"7":
                print("""

                Kingdom Hearts is one of the major elements of the Kingdom Hearts universe.
                It is the heart of all worlds, and the source of great power and wisdom.
                It can be seen as the heart of all that exists.

                """)
                passDialogue()
                glossary()
                
            case"8":
                print("""
                
                Key-shaped weapon forged by man during the era of fairy tales.
                There is still no certainty as to its origins.

                A Keyblade can originate from light, darkness, or the human heart.
                That said, most of the known Keyblades, including Sora and Mickey, find their source in light.

                A Keyblade does not materialize in the hand of its wearer until the wearer has proven that their heart is worthy.
                No lock or enemy of the light can resist a Keyblade.

                """)
                passDialogue()
                glossary()
            case"9":
                print("""

                The Keyblade Necropolis is a desert world that was the scene of the Keyblade Wars.

                The landscape is still marked by this battle between Light and Darkness, and many Keys stuck in the ground,
                serve as graves for the warriors who perished.

                """)
                passDialogue()
                glossary()
            case"10":
                print("""
                
                The χ-blade is a weapon of legend, the Ultimate Keyblade.

                It is created under special circumstances, when a heart of pure Light and a heart of pure Darkness come into contact,
                and would exist in parallel with Kingdom Hearts.

                 
                Despite its writing, it is pronounced the same way as Keyblade.
                the χ of the name corresponding to the chi of the Greek alphabet.

                """)
                passDialogue()
                glossary()
                
            case"11":
                chooseMenu()
                
            default:
                print("""
                    
                    ⚠️ I'm sorry, i don't recognize what you wrote, try again ⚠️w

                """)
                glossary()
            }
        }
    }
}
