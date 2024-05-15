//
//  FirstPlayListCell.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import UIKit

class FirstPlayListCell: UICollectionViewCell {

    //MARK: - Outlets -
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCreatedDate: UILabel!
    @IBOutlet weak var constantVwWidth: NSLayoutConstraint!
    @IBOutlet weak var constantVwHeight: NSLayoutConstraint!
    
    //MARK: Custom methods -
    func applyStyle() {
        
        self.lblTitle.text = "DARK"
        self.lblCreatedDate.text = "Created on 2019"
        self.lblTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size14.value), color: .white)
        self.lblCreatedDate.fontStyle(font: FontFamily.SFProText.regular.font(size: FontSize.size12.value), color: .white)
        
        DispatchQueue.main.async {
            self.imgBackground.layer.cornerRadius = 15
        }
        self.constantVwWidth.constant = (kScreenWidth / 2.5) - 40
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.applyStyle()
        // Initialization code
    }

}
