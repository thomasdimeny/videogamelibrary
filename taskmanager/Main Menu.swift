//
//  Main Menu.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//
/*
 Objectives
 User should be able to create new tasks.
 User should be able to see a list of all tasks (Completed and Uncompleted).
 User should be able to see a list of only uncompleted tasks.
 User should be able to see a list of only completed tasks.
 User should be able to mark a task complete.
 User should be able to delete a task.
 User should be able to exit the program.
 The program should display menu(s) listing all possible actions the user can take.
 The program should include error handling to account for incorrect user input.
 
 
 Each task should have:
 Title
 Due date
 Details of task

 
 
*/
import Foundation

//main menu below
func mainMenu(){
    print("""
    to add a task, type 'add'
    
    to remove a task, type 'remove'
    
    to view a task, type 'view'
    
    
""")
    
    let userInput = readLine()!
    
    if userInput == "add"{
        addTask()
        
    } else if userInput == "remove" {
        //removeTask()
        
    } else if userInput == "view"{
       //viewTawk()
        
    }
        else {
        mainMenu()
    }

    
}


