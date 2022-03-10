//
//  WordleViewModel.swift
//  XenditWordleAssessment
//
//  Created by Apple on 09/03/22.
//

import Foundation
import UIKit

protocol IWordleViewModel{
    var  currentGuesses: [[Character?]] {get}
    func cellColor(indexPath: IndexPath) -> UIColor?
    func letterPressed(letter: Character)-> Bool
    func removeLetter() -> Bool
}

class WordleViewModel: IWordleViewModel {
    private let worldeList = ["Hello", "Today", "Ocean", "Gamer"]
    private var todayWordle = ""

    private var wordleGuesses: [[Character?]] = Array(
        repeating: Array(repeating: nil, count: 5),
        count: 6
    )
    // setting No. of cells
    var currentGuesses: [[Character?]] {
        wordleGuesses
    }
    // Initializing and setting word
    init(){
        todayWordle = worldeList.randomElement() ?? "India"
        // printing for testing 
        print("Today's Wordle:", todayWordle)
    }
    // Get colors according for indexpath
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
    // Adding letter in cells rows and section
    func letterPressed(letter: Character)-> Bool {
        
        for i in 0..<wordleGuesses.count {
            for j in 0..<wordleGuesses[i].count {
                if wordleGuesses[i][j] == nil {
                    wordleGuesses[i][j] = letter
                    return true
                }
            }
        }
        return false
    }
    // Removing letter for retry
    func removeLetter() -> Bool{
        
        for i in (0..<wordleGuesses.count).reversed() {
            for j in (0..<wordleGuesses[i].count).reversed() {
                if wordleGuesses[i][j] != nil {
                    wordleGuesses[i][j] = nil
                    return true
                }
            }
            
        }
        return false
    }
    
}
