//
//  WordleLetterCell.swift
//  XenditWordleAssessment
//
//  Created by Apple on 09/03/22.
//

import UIKit

class WordleLetterCell: UICollectionViewCell {
    @IBOutlet weak var letter: UILabel!
    @IBOutlet weak var letterBGView: UIView!
    @IBOutlet weak var viewWidth: NSLayoutConstraint!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray3.cgColor
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        letter.text = nil
    }
    
    func updateUI(){
        viewWidth.constant = self.frame.width
        viewHeight.constant = self.frame.height
    }

}
