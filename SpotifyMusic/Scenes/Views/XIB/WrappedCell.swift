//
//  WrappedCell.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import UIKit

class WrappedCell: UICollectionViewCell {

    //MARK: - Outlets -
    @IBOutlet weak var imgWrapped: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    @IBOutlet weak var vwMain: UIView!
    @IBOutlet weak var constantVwWidth: NSLayoutConstraint!
    @IBOutlet weak var constantVwHeight: NSLayoutConstraint!
    
    //MARK: Custom methods -
    func applyStyle() {
        self.lblTitle.text = "Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris Est dictum enim tortor aliquam mauris"
        self.lblTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size16.value), color: .white)
        self.lblSubTitle.text = "Semper proin at ornare sed pulvinar ultricies sollicitudin "
        self.lblSubTitle.fontStyle(font: FontFamily.SFProText.regular.font(size: FontSize.size12.value), color: .white)
        
        self.vwMain.backgroundColor = .appThemeLightBlack
        DispatchQueue.main.async {
            self.vwMain.layer.cornerRadius = 15
            self.imgWrapped.layer.cornerRadius = 15
        }
        self.constantVwWidth.constant = kScreenWidth - 20
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.applyStyle()
        // Initialization code
    }

}
