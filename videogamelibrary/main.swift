//
//  main.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

/*Main Menu:
 1. Add games
 2. remove a game
 3. Check a game out
 4. Check a game in
 5. Quit the program
 
 ADD GAME:
 1. Ask for name of the game
 2. The game should have a property that know what day the game was checked out
 3. Use an array to keep track of all the games in the library
 
 REMOVE A GAME:
 1. Remove the game selected from the library (Array)
 
 CHECK A GAME OUT:
 1. Specify the game you want to check out
 2. Keep track of the date that the game was checked out as well as the date the the game is due back
 
 CHECK IN A GAME:
 1. Reset the due date on the game and the date that the game was checked out
 
 QUIT THE PROGRAM:
 1. Self Explanatory
 
 */
let currentDate = Date()

let calendar = Calendar.current

let twoWeeksFromNow = calendar.date(byAdding: .day, value: 14, to: currentDate)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy hh:mm"


//print(twoWeeksFromNow!)



print("""
Welcome to the video game library!
    please add a a game to the Video Game Library
    by typing in the name below.
""")
addGameFirst()



