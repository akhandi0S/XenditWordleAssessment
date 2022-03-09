//
//  ViewController.swift
//  Mock
//
//  Created by Apple on 09/03/22.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textFieldOne: UITextField!
    var name  = "Akhand"
    let arr1 = [1,2,3]
    let arr2 = [7,6,5]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(reverse(str: name))
        print(mergerSortArray(arr1: arr1, arr2: arr2))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveButtonPressed(_ sender: UIButton) {
        
    }
    
    
    func reverse(str:String)-> String{
        var s = ""
        for cha in str {
            s = "\(cha)" + s
        }
        return s
    }
    
    
    func mergerSortArray(arr1:[Int], arr2:[Int]) -> [Int]{
        var array = arr1 + arr2
        for _ in 0..<array.count-1{
            for j in 0..<array.count-1{
                if array[j] > array[j+1]{
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
            }
        }
        return array
        
    }
    
}

