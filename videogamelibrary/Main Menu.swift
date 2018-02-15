//
//  Main Menu.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

//main menu below
func mainMenu(){
    print("""
    to add a game, type 'add')
    
    to remove a game, type 'remove' )
    
    print("to check a game in, type 'check in')
    
    print("to check a game out, type 'check out'
""")
    
    let userInput = readLine()!
    
    if userInput == "add"{
        addGame()
        
    } else if userInput == "remove" {
        removeGame()
        
    } else if userInput == "check in"{
        checkIn()
    } else if userInput == "check out"{
        checkOut()
    } else {
        mainMenu()
    }

    
}


