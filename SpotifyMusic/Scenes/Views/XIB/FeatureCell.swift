//
//  FeatureCell.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import UIKit

class FeatureCell: UICollectionViewCell {

    //MARK: - Outlets -
    @IBOutlet weak var imgFeature: UIImageView!
    @IBOutlet weak var lblChackout: UILabel!
    @IBOutlet weak var vwChackout: UIView!
    
    //MARK: - Custom methods -
    
    func applyStyle() {
        self.lblChackout.text = "CHECK IT OUT"
        self.lblChackout.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size12.value), color: .black)
        self.lblChackout.addCharacterSpacing(3.0)
        
        self.imgFeature.image = .feature.image
        self.vwChackout.backgroundColor = .none
        self.vwChackout.layer.borderColor = UIColor.appThemeExtraLightBlack.cgColor
        self.vwChackout.layer.borderWidth = 1
        DispatchQueue.main.async {
            self.vwChackout.layer.cornerRadius = self.vwChackout.frame.height / 2
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.applyStyle()
        // Initialization code
    }

}
