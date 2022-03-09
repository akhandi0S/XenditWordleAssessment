//
//  WordleViewModel.swift
//  XenditWordleAssessment
//
//  Created by Apple on 09/03/22.
//

import Foundation
import UIKit

class WordleViewModel:NSObject{
    let worldeList = ["Hello", "Today", "Ocean", "Gamer"]

    var todayWordle = ""
    private var wordleGuesses: [[Character?]] = Array(
        repeating: Array(repeating: nil, count: 5),
        count: 6
    )
    
    var currentGuesses: [[Character?]] {
        return wordleGuesses
    }
    
    func getTodayWordle(){
        todayWordle = worldeList.randomElement() ?? "India"
        print("Today Wordle:", todayWordle)
    }
    
    func cellColor(indexPath: IndexPath) -> UIColor? {
        let count = wordleGuesses[indexPath.section].compactMap({ $0 }).count
        guard count == 5 else {
            return nil
        }

        let indexedAnswer = Array(todayWordle.uppercased())

        guard let letter = wordleGuesses[indexPath.section][indexPath.row],
              indexedAnswer.contains(letter) else {
            return nil
        }

        if indexedAnswer[indexPath.row] == letter {
            return .systemGreen
        }
        return .systemOrange
    }

    func letterPressed(letter: Character)-> Bool {
        var stop = false

        for i in 0..<wordleGuesses.count {
            for j in 0..<wordleGuesses[i].count {
                if wordleGuesses[i][j] == nil {
                    wordleGuesses[i][j] = letter
                    stop = true
                    break
                }
            }

            if stop {
                break
            }
        }
        return true
    }
    
}
