//
//  Input Handler.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

func dateOut(){
    print("""

Game was checked out/removed on:

""")
    print(dateFormatter.string(from: currentDate))
    print("""

The game is due on:

""")
    print(dateFormatter.string(from: twoWeeksFromNow!))

}


func quitProgram() {
    print("""

Would you like to quit the program? type yes or no

""")
    var userInput = readLine()!
    if userInput == "yes" {
        exit(0)
    } else if userInput == "no"{
        mainMenu()
    } else {
        print("Valid value please")
        quitProgram()
    }
}

//game manager functions below
func addGameFirst() {
    print("Which game would you like to add?")
    var userInput = VideoGame(name: readLine()!)
    videoGameLibrary.append(userInput)
    print("Game added")
    mainMenu()
}

func addGame() {
    print("Which game would you like to add?")
    var userInput = VideoGame(name: readLine()!)
    videoGameLibrary.append(userInput)
    print("Game added on")
    print(dateFormatter.string(from: currentDate))
   quitProgram()
    mainMenu()
}



func removeGame() {
    print("Which game would you like to remove? Type number 0 to remove the first game, 1 for the second game, etc.")
    for (n, c) in videoGameLibrary.enumerated()
    {
        if c.isGameCheckedOut == false {
            print("\(n): '\(c.name)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
    if  userInput > videoGameLibrary.count - 1 {
        print("Please enter a valid number")
        removeGame()
    } else {
    videoGameLibrary.remove(at: userInput)
    dateOut()
    quitProgram()
        mainMenu()
        }
        
    } else {
        print("Please put in a number")
        removeGame()
    }
}


func checkIn(){
    print("Which game would you like to check in? type the number which corresponds with your certain game. Last time you checked out ")
    for (n, c) in videoGameLibrary.enumerated() {
        if c.isGameCheckedOut == false {
            print("\(n): '\(c.name)'")
        }
        }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
    if userInput > videoGameLibrary.count - 1 {
        print("Please put in a valid number")
        checkIn()
    } else {
    videoGameLibrary[userInput].isGameCheckedOut = false
    quitProgram()
    mainMenu()
    }
    } else {
        print("Please enter a valid number")
        checkIn()
    }

}


func checkOut(){
    print("Which game would you like to check out? Type 0 for the first game, 1 for the second game, etc.")
    for (n, c) in videoGameLibrary.enumerated() {
        if c.isGameCheckedOut == false {
        print("\(n): '\(c.name)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
     if userInput > videoGameLibrary.count - 1 {
        print("Enter a valid number please")
        checkOut()
    } else {
    videoGameLibrary[userInput].isGameCheckedOut = true
    dateOut()
    quitProgram()
    mainMenu()
    
    }
    } else {
        print("Please enter a valid number")
        checkOut()
    }
}














