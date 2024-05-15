//
//  LoginVC.swift
//  MyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtEmail: ThemeTextField!
    @IBOutlet weak var lblEmailSubTitle: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtPassword: ThemeTextField!
    @IBOutlet weak var lblPasswordSubTitle: UILabel!
    @IBOutlet weak var btnNext: ThemeButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    private let viewModel = LoginVM()
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        
    }
    
    func applyStyle() {
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.lblEmail.text = L10n.whatSYourEmail
        self.lblEmailSubTitle.text = L10n.youLlNeedToConfirmThisEmailLater
        self.lblPassword.text = L10n.password
        self.lblPasswordSubTitle.text = L10n.volutpatConsequatMorbiEtiamLacinia
        
        self.btnForgotPassword.setTitle(L10n.forgotPassword, for: .normal)
        self.btnForgotPassword.setTitleColor(.white, for: .normal)
        self.btnForgotPassword.titleLabel?.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size10.value), color: .white)
        self.btnNext.setTitle(L10n.next, for: .normal)
    }
    
    func setData() {
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    @IBAction func btnNextTapped(_ sender: ThemeButton) {
        self.viewModel.apiLogin(self.txtEmail.text!, self.txtPassword.text!, vc: self)
    }
    
    @IBAction func btnBackTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnForgotPassword(_ sender: UIButton) {
        let vcForgot = StoryboardScene.Authentication.forgotPasswordVC.instantiate()
        self.navigationController?.pushViewController(vcForgot, animated: true)
    }
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.setData()
        self.applyStyle()
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
