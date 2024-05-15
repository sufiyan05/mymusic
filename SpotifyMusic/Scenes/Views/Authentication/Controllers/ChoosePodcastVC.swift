//
//  ChoosePodcastVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class ChoosePodcastVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var colPodcastList: UICollectionView!
    @IBOutlet weak var btnDone: UIButton!
//    @IBOutlet weak var vwBottom: UIView!
    
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 20))
    var arrPodcasts = [PodcastModel]()
    var arrIndexPath = [IndexPath]()
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        let nibPodcast = UINib(nibName: "PodcastCell", bundle: nil)
        self.colPodcastList.register(nibPodcast, forCellWithReuseIdentifier: "PodcastCell")
        
        self.colPodcastList.delegate = self
        self.colPodcastList.dataSource = self
    }
    
    func applyStyle() {
        self.txtSearch.leftView = leftView
        self.txtSearch.leftViewMode = .always
        self.txtSearch.textColor = .white
        self.txtSearch.font = FontFamily.SFProText.medium.font(size: FontSize.size14.value)
        self.txtSearch.attributedPlaceholder = NSAttributedString(string: L10n.search + "..", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        self.txtSearch.setRightIcon(image: .search.image, space: 0)
        
        self.btnDone.setTitle(L10n.done, for: .normal)
        self.btnDone.setTitleColor(.black, for: .normal)
        self.btnDone.backgroundColor = .white
        
        
        
        DispatchQueue.main.async {
            self.txtSearch.borderStyle(color: .appThemeExtraLightWhite, width: 1)
            self.btnDone.layer.cornerRadius = self.btnDone.frame.height / 2
        }
    }
    
    func setData() {
        self.arrPodcasts.append(PodcastModel(image: .serialKiller.image, name: "Serial Killer"))
        self.arrPodcasts.append(PodcastModel(image: .internetOne.image, name: "Internet Urban Legends"))
        self.arrPodcasts.append(PodcastModel(image: .theHistoryOne.image, name: "The History"))
        
        self.arrPodcasts.append(PodcastModel(image: .serialKillerGirl.image, name: "Serial Killer"))
        self.arrPodcasts.append(PodcastModel(image: .internetTwo.image, name: "Internet Urban Legends"))
        self.arrPodcasts.append(PodcastModel(image: .theHistoryTwo.image, name: "The History"))
        
        self.arrPodcasts.append(PodcastModel(image: .serialKillerThree.image, name: "Serial Killer"))
        self.arrPodcasts.append(PodcastModel(image: .internetThree.image, name: "Internet Urban Legends"))
        self.arrPodcasts.append(PodcastModel(image: .theHistoryThree.image, name: "The History"))
        
        self.arrPodcasts.append(PodcastModel(image: .serialKillerFour.image, name: "Serial Killer"))
        self.arrPodcasts.append(PodcastModel(image: .internetOne.image, name: "Internet Urban Legends"))
        self.arrPodcasts.append(PodcastModel(image: .theHistoryFour.image, name: "The History"))
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    @IBAction func btnDoneTapped(_ sender: UIButton) {
        GFunction.shared.setDefaults()
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.applyStyle()
        self.setData()
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


//======================================================================

//MARK: - Extension UICollectionView Delegate & Data Source -
extension ChoosePodcastVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrPodcasts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellPodcast = collectionView.dequeueReusableCell(withReuseIdentifier: "PodcastCell", for: indexPath) as! PodcastCell
        
        let data = self.arrPodcasts[indexPath.row]
        cellPodcast.imgPodcast.image = data.image
        cellPodcast.lblPodcastName.text = data.name
        
        if arrIndexPath.contains(indexPath) {
            cellPodcast.vwMain.layer.borderWidth = 1
            cellPodcast.vwMain.layer.borderColor = UIColor.appThemeLightWhite.cgColor
        } else {
            cellPodcast.vwMain.layer.borderWidth = 0
            cellPodcast.vwMain.layer.borderColor = .none
        }
        
        if arrIndexPath.isEmpty {
            self.btnDone.isHidden = true
        } else {
            self.btnDone.isHidden = false
        }
        return cellPodcast
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if arrIndexPath.contains(indexPath) {
            arrIndexPath = arrIndexPath.filter { $0 != indexPath}
        } else {
            arrIndexPath.append(indexPath)
        }
        self.colPodcastList.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = 148 * ScreenSize.heightAspectRatio
        let width = 108.6 * ScreenSize.widthAspectRatio - 10
        return CGSize(width: width, height: height)
    }
    
}
