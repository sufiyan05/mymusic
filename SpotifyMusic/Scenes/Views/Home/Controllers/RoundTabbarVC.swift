//
//  RoundTabbarVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 14/04/22.
//

import Foundation
import UIKit

class RoundTabbarVC: UITabBarController {
    
    //MARK: - IBoutlet Variables -
    
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        
    }
    
    func applyStyle() {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 40, y: self.tabBar.bounds.minY - 5, width: self.tabBar.bounds.width - 80 * ScreenSize.widthAspectRatio, height: self.tabBar.bounds.height + 10 * ScreenSize.heightAspectRatio), cornerRadius: (self.tabBar.frame.width/2)).cgPath
    
        layer.isHidden = false
        layer.masksToBounds = false
        layer.fillColor = UIColor.appThemeLightBlack.cgColor
  
        
        if let items = self.tabBar.items {
          items.forEach { item in item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -5, right: 0) }
        }
        self.tabBar.itemWidth = 40.0
        self.tabBar.itemPositioning = .centered
        self.tabBar.layer.insertSublayer(layer, at: 0)
        
        self.tabBar.unselectedItemTintColor = .appThemeWhite
        for item in tabBar.items! {
            item.setTitleTextAttributes([NSAttributedString.Key.font: FontFamily.SFProText.medium.font(size: FontSize.size9.value)!], for: .normal)
        }
    }
    
    func setData() {
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.applyStyle()
        self.setData()
        self.setup()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}
