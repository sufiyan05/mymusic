//
//  StartScreenVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class StartScreenVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblGoogle: UILabel!
    @IBOutlet weak var lblFaceBook: UILabel!
    @IBOutlet weak var lblApple: UILabel!
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        
    }
    
    func applyStyle() {
        self.lblTitle.text = L10n.millionsOfSongs
        self.lblSubTitle.text = L10n.freeOnSpotify
        
        self.lblTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size26.value), color: .white)
        self.lblSubTitle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size26.value), color: .white)
        
        self.btnSignUp.setTitle(L10n.signUpFree, for: .normal)
        self.btnSignUp.backgroundColor = .appThemeGreen
        self.btnSignUp.titleLabel?.font = FontFamily.SFProText.semibold.font(size: FontSize.size14.value)
        self.btnSignUp.setTitleColor(.black, for: .normal)
        
        self.lblGoogle.text = L10n.continueWithGoogle
        self.lblGoogle.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size14.value), color: .white)
        
        self.lblFaceBook.text = L10n.continueWithFacebook
        self.lblFaceBook.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size14.value), color: .white)
        
        self.lblApple.text = L10n.continueWithApple
        self.lblApple.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size14.value), color: .white)
        
        self.btnLogin.setTitle(L10n.login, for: .normal)
        self.btnLogin.setTitleColor(.white, for: .normal)
        self.btnLogin.titleLabel?.font = FontFamily.SFProText.semibold.font(size: FontSize.size14.value)
        
        DispatchQueue.main.async {
            self.btnSignUp.borderStyle(color: .appThemeBlack, width: 0)
        }
    }
    
    func setData() {
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    @IBAction func btnSignUpTapped(_ sender: UIButton) {
        let vcSignUp = StoryboardScene.Authentication.signUpVC.instantiate()
        self.navigationController?.pushViewController(vcSignUp, animated: true)
    }
    
    @IBAction func btnLoginTapped(_ sender: UIButton) {
        let vcLogin = StoryboardScene.Authentication.loginVC.instantiate()
        self.navigationController?.pushViewController(vcLogin, animated: true)
    }
    @IBAction func btnGoogleTapped(_ sender: UIButton) {
        GFunction.shared.setDefaults()
    }
    @IBAction func btnFacebookTapped(_ sender: UIButton) {
        GFunction.shared.setDefaults()
    }
    @IBAction func btnAppleTapped(_ sender: UIButton) {
        GFunction.shared.setDefaults()
    }
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.setData()
        self.applyStyle()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barStyle = .black
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
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}
