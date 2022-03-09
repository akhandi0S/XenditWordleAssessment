//
//  WordleViewController.swift
//  XenditWordleAssessment
//
//  Created by Apple on 09/03/22.
//

import UIKit

class WordleViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var letterInputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }

    func setupUI(){
        letterInputField.becomeFirstResponder()
    }

}
