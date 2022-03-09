//
//  WordleViewModel.swift
//  XenditWordleAssessment
//
//  Created by Apple on 09/03/22.
//

import Foundation

class WordleViewModel:NSObject{
    let worldeList = ["Hello", "Today", "Ocean", "Gamer"]

    var todayWordle = ""
    private var guesses: [[Character?]] = Array(
        repeating: Array(repeating: nil, count: 5),
        count: 6
    )
    
    func getTodayWordle(){
        todayWordle = worldeList.randomElement() ?? "India"
        print("Today Wordle:", todayWordle)
    }
    
}
