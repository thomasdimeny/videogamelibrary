//
//  Input Handler.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation


func quitProgram() {
    print("""

Would you like to quit the program? type yes or no

""")
    let userInput = readLine()!
    if userInput == "yes" {
        exit(0)
    } else if userInput == "no"{
        mainMenu()
    } else {
        print("Valid value please")
        quitProgram()
    }
}


func userDate() {
    print("in how many days would you like this task to be due? "
    let calendar = Calendar.current
    
    
    
    
}




//game manager functions below

func addTask() {
    print("What task would you like to add? Type the name and the description")
    let userInput = UserTasks(name: readLine()!, describe: readLine()!)
    taskLibrary.append(userInput)
   quitProgram()
    mainMenu()
}



func removeTask() {
    print("Which task would you like to remove? Type number 0 to remove the first task, 1 for the second task, etc.")
    for (n, c) in taskLibrary.enumerated()
    {
        if c.complete == false {
            print("\(n): '\(c.name, c.describe)'")
        }
    } 
    let userInput = Int(readLine()!)
    if let userInput = userInput {
    if  userInput > taskLibrary.count - 1 {
        print("Please enter a valid number")
        removeTask()
    } else {
    taskLibrary.remove(at: userInput)
        quitProgram()
        mainMenu()
        }
        
    } else {
        print("Please put in a number")
        removeTask()
    }
}


/*func viewTasks(){
    for (n, c) in taskLibrary.enumerated() {
        /*if c.isCompleted == false {
            print("\(n): '\(c.name)'")
        }
        }*/
    let userInput = Int(readLine()!)
    if let userInput = userInput {
    if userInput > taskLibrary.count - 1 {
        print("Please put in a valid number")
        checkIn()
    } else {
    taskLibrary[userInput].isCompleted = false
    quitProgram()
    mainMenu()
    }
    } else {
        print("Please enter a valid number")
        checkIn()
    }

}
*/















