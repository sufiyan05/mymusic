//
//  HomeVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class HomeVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var lblTitleOne: UILabel!
    @IBOutlet weak var lblTitleTwo: UILabel!
    @IBOutlet weak var lblTitleThree: UILabel!
    @IBOutlet weak var lblTitleFour: UILabel!
    @IBOutlet weak var lblTitleFive: UILabel!
    @IBOutlet weak var lblTitleSix: UILabel!
    
    @IBOutlet weak var colPlaylistOne: UICollectionView!
    @IBOutlet weak var colPlaylistTwo: UICollectionView!
    @IBOutlet weak var colWrapped: UICollectionView!
    @IBOutlet weak var colPopular: UICollectionView!
    @IBOutlet weak var colFeature: UICollectionView!
    @IBOutlet weak var colReleases: UICollectionView!
    
    @IBOutlet weak var btnExplore: UIButton!
    @IBOutlet weak var lblPremium: UILabel!
    @IBOutlet weak var btnSpotify: UIButton!
    @IBOutlet weak var barItemLogout: UIBarButtonItem!
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    private let viewModel = HomeVM()
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        //My PlayList First
        let nibFirstPlayList = UINib(nibName: "FirstPlayListCell", bundle: nil)
        self.colPlaylistOne.register(nibFirstPlayList, forCellWithReuseIdentifier: "FirstPlayListCell")
        self.colPlaylistOne.delegate = self
        self.colPlaylistOne.dataSource = self
        
        //My PlayList Second
        let nibSecondPlayList = UINib(nibName: "PlayListCell", bundle: nil)
        self.colPlaylistTwo.register(nibSecondPlayList, forCellWithReuseIdentifier: "PlayListCell")
        self.colPlaylistTwo.delegate = self
        self.colPlaylistTwo.dataSource = self
        
        //Wrapped collection
        let nibWrapped = UINib(nibName: "WrappedCell", bundle: nil)
        self.colWrapped.register(nibWrapped, forCellWithReuseIdentifier: "WrappedCell")
        self.colWrapped.delegate = self
        self.colWrapped.dataSource = self
        
        //Popular List
        let nibPopular = UINib(nibName: "PlayListCell", bundle: nil)
        self.colPopular.register(nibPopular, forCellWithReuseIdentifier: "PlayListCell")
        self.colPopular.delegate = self
        self.colPopular.dataSource = self
        
        //New Release List
        let nibRelease = UINib(nibName: "PlayListCell", bundle: nil)
        self.colReleases.register(nibRelease, forCellWithReuseIdentifier: "PlayListCell")
        self.colReleases.delegate = self
        self.colReleases.dataSource = self
        
        //Feature collection
        let nibFeature = UINib(nibName: "FeatureCell", bundle: nil)
        self.colFeature.register(nibFeature, forCellWithReuseIdentifier: "FeatureCell")
        self.colFeature.delegate = self
        self.colFeature.dataSource = self
    }
    
    func applyStyle() {
        
        self.barItemLogout.title = L10n.logout
        self.barItemLogout.setTitleTextAttributes([NSAttributedString.Key.font: FontFamily.SFProText.semibold.font(size: FontSize.size13.value)!], for: .normal)
        self.barItemLogout.tintColor = .appThemeWhite
       
        self.lblTitleOne.text = L10n.myPlaylists
        self.lblTitleTwo.text = L10n.myPlaylists
        self.lblTitleThree.text = L10n._2021Wrapped
        self.lblTitleFour.text = L10n.popular
        self.lblTitleFive.text = L10n.featured
        self.lblTitleSix.text = L10n.newReleases
        
        self.lblTitleOne.addCharacterSpacing(3.0)
        self.lblTitleTwo.addCharacterSpacing(3.0)
        self.lblTitleThree.addCharacterSpacing(3.0)
        self.lblTitleFour.addCharacterSpacing(3.0)
        self.lblTitleFive.addCharacterSpacing(3.0)
        self.lblTitleSix.addCharacterSpacing(3.0)
        
        self.btnExplore.setTitle(L10n.explore, for: .normal)
        self.btnExplore.titleLabel?.addCharacterSpacing(2.0)
        self.lblPremium.text = L10n.upgradToPremium
        self.lblPremium.addCharacterSpacing(2.0)
        self.btnExplore.titleLabel?.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size12.value), color: .white)
        
        self.btnExplore.backgroundColor = .appThemeGreen
        self.lblPremium.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size12.value), color: .white)
        
        self.btnSpotify.titleLabel?.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size12.value), color: .white)
        self.btnSpotify.titleLabel?.addCharacterSpacing(2.0)
        
        DispatchQueue.main.async {
            self.btnExplore.borderStyle(color: .black, width: 0)
        }
    }
    
    func setData() {
        self.viewModel.setData()
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    @IBAction func btnSettingTapped(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "", message: "Are you sure you want to logout?", preferredStyle: .alert)
            let actionYes = UIAlertAction(title: "Yes", style: .default){ alertAction in
                defaults.set(false, forKey: "isLogin")
                defaults.synchronize()
                GFunction.shared.setRootController()
            }
            
        let actionNo = UIAlertAction(title: "No", style: .destructive){ alertAction in
                
            }
            
        alertController.addAction(actionYes)
        alertController.addAction(actionNo)
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.applyStyle()
        self.setup()
        self.setData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        navigationController?.navigationBar.barStyle = .black
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
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

//======================================================================

//MARK: - Extension UICollectionView delegate and datasource -

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.colPlaylistOne {
            return self.viewModel.numberOfRowsFirstPlayList()
        } else if collectionView == self.colPlaylistTwo {
            return self.viewModel.numberOfRowsSecondPlayList()
        } else if collectionView == self.colWrapped {
            return 2
        } else if collectionView == self.colPopular {
            return self.viewModel.numberOfRowsSecondPlayList()
        } else if collectionView == self.colFeature {
            return 2
        } else if collectionView == self.colReleases {
            return self.viewModel.numberOfRowsSecondPlayList()
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.colPlaylistOne {
            let cellPlayListOne = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstPlayListCell", for: indexPath) as! FirstPlayListCell
            
            let data = self.viewModel.valueForFirstPlayListCell(indexPath.item)
            cellPlayListOne.imgBackground.image = data.image
            cellPlayListOne.constantVwHeight.constant = self.colPlaylistOne.bounds.height
            
            return cellPlayListOne
        } else if collectionView == self.colPlaylistTwo {
            let cellPlayListTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayListCell", for: indexPath) as! PlayListCell
            
            let data = self.viewModel.valueForSecondPlayListCell(indexPath.item)
            cellPlayListTwo.imgPlayList.image = data.image
            cellPlayListTwo.roundCorner()
            
            return cellPlayListTwo
        } else if collectionView == self.colWrapped {
            let cellWrapped = collectionView.dequeueReusableCell(withReuseIdentifier: "WrappedCell", for: indexPath) as! WrappedCell
            cellWrapped.constantVwHeight.constant = self.colWrapped.bounds.height
            return cellWrapped
        } else if collectionView == self.colPopular {
            let cellPopular = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayListCell", for: indexPath) as! PlayListCell
            
            let data = self.viewModel.valueForSecondPlayListCell(indexPath.item)
            cellPopular.imgPlayList.image = data.image
            cellPopular.radiusCorner()
            
            return cellPopular
        } else if collectionView == self.colFeature {
            let cellFeature = collectionView.dequeueReusableCell(withReuseIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
            return cellFeature
        } else if collectionView == self.colReleases {
            let cellRelease = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayListCell", for: indexPath) as! PlayListCell
            
            let data = self.viewModel.valueForSecondPlayListCell(indexPath.item)
            cellRelease.imgPlayList.image = data.image
            cellRelease.radiusCorner()
            
            return cellRelease
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.colPlaylistTwo {
            return CGSize(width: collectionView.frame.height - 30.0, height: collectionView.frame.height)
        } else if collectionView == self.colWrapped {
            return CGSize(width: collectionView.bounds.width - 20.0, height: collectionView.bounds.height)
        } else if collectionView == self.colPopular {
            return CGSize(width: collectionView.frame.height - 50.0, height: collectionView.frame.height)
        } else if collectionView == self.colFeature {
//            let height = self.colFeature.bounds.height
//            let width = self.colFeature.bounds.width
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
        } else if collectionView == self.colReleases {
            return CGSize(width: collectionView.frame.height - 50.0, height: collectionView.frame.height)
        } else {
            return CGSize()
        }
    }
}
