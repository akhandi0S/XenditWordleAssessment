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
    let viewModel = WordleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupUI()
        setupObserver()
    }
    
    //Register cell xib to collectionView & enbleing keyboard
    func setupUI(){
        collectionView.register(UINib(nibName: "WordleLetterCell", bundle: nil), forCellWithReuseIdentifier: "WordleLetterCell")
        letterInputField.becomeFirstResponder()
    }
    
    //to get the today Word for game from viewModel
    func setupObserver(){
        viewModel.getTodayWordle()
    }
    
}
//MARK: - CollectionView Delegate, DataSource, and layout Delegate
extension WordleViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WordleLetterCell", for: indexPath) as? WordleLetterCell else {
            return UICollectionViewCell()
        }
        cell.updateUI()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize: CGFloat = (collectionView.frame.size.width-20)/5
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    
}
