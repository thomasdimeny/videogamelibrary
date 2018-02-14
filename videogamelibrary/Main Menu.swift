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
    print("to add a game, type ag")
    
    print("to remove a game, type rg")
    
    print("to check a game in, type cgi")
    
    print("to check a game out, type cgo")
    
    let userInput = readLine()!
    
    if userInput == "ag"{
        addGame()
        
    } else if userInput == "rg" {
        removeGame()
        
    } else if userInput == "cgi"{
        checkIn()
    } else if userInput == "cgo"{
        checkOut()
    } else {
        mainMenu()
    }
//if statement for addGame
    
   
        //if statement for removeGame
    
    
//if statement for check game in
    
    
}


