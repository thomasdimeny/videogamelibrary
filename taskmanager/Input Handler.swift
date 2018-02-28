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


func viewTasks(){
    print("Here are your tasks, completed and uncompleted:")
    for (n, c) in taskLibrary.enumerated() {
            print("\(n): '\(c.name)'")
        }
    print("To see a specific task, type the number that goes before it.")
    let userInput = Int(readLine()!)
    if let userInput = userInput {
    if userInput > taskLibrary.count - 1 {
        print("Please put in a valid number")
       viewTasks()
    }  else {
        print(taskLibrary[userInput].name)
        print(taskLibrary[userInput].describe)
        }
        print("would you like to mark this task as complete?")
        let isComplete = readLine()!
        if isComplete == "yes"{
            taskLibrary[userInput].complete = true
            print("this task is now complete")
        } else {
            print("this task remains uncomplete.")
        }
    }
    mainMenu()
    quitProgram()

}


func completeTasks() {
  print("Here are your complete tasks")
    for (n, c) in taskLibrary.enumerated() {
        if c.complete == true {
        print("\(n): '\(c.name)'")
        }
    }
    
}

func incompleteTasks() {
    print("Here are your incomplete tasks")
    for (n, c) in taskLibrary.enumerated() {
        if c.complete == false {
            print("\(n): '\(c.name)'")
        }
    }
}










