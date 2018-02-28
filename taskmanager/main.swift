//
//  main.swift
//  videogamelibrary
//
//  Created by Thomas Dimeny on 2/13/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

let currentDate = Date()

let calendar = Calendar.current

let twoWeeksFromNow = calendar.date(byAdding: .day, value: 14, to: currentDate)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy hh:mm"


//print(twoWeeksFromNow!)



print("""
Welcome to the task manager!
    please add a a task to the task manager
    by typing in the name below.
""")
mainMenu()



