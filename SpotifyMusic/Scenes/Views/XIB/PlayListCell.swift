//
//  PlayListCell.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import UIKit

class PlayListCell: UICollectionViewCell {

    //MARK: - Outlets -
    @IBOutlet weak var imgPlayList: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    //MARK: Custom methods -
    
    func roundCorner() {
        self.lblTitle.text = "THE WEEKEND"
        self.lblTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size13.value), color: .white)
        self.lblTitle.numberOfLines = 1
        DispatchQueue.main.async {
            self.imgPlayList.layer.cornerRadius = self.imgPlayList.frame.height / 2
        }
    }
    
    func radiusCorner() {
        self.lblTitle.text = "THE WEEKEND\n2022"
        self.lblTitle.textAlignment = .left
        self.lblTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size13.value), color: .white)
        DispatchQueue.main.async {
            self.imgPlayList.layer.cornerRadius = 15
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
