//
//  PodcastCell.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import UIKit

class PodcastCell: UICollectionViewCell {

    //MARK: - Outlets -
    @IBOutlet weak var imgPodcast: UIImageView!
    @IBOutlet weak var lblPodcastName: UILabel!
    @IBOutlet weak var vwMain: UIView!
    
    //MARK: Custom methods -
    func applyStyle() {
        self.lblPodcastName.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size10.value), color: .white)
        DispatchQueue.main.async {
            self.imgPodcast.layer.cornerRadius = 20
            self.vwMain.layer.cornerRadius = 20
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.applyStyle()
        // Initialization code
    }

}
