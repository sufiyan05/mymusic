//
//  ForgotPasswordVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class ForgotPasswordVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtEmail: ThemeTextField!
    @IBOutlet weak var lblEmailSubTitle: UILabel!
    @IBOutlet weak var btnSend: ThemeButton!
    
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    private let viewModel = ForgotPasswordVM()
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        
    }
    
    func applyStyle() {
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.lblEmail.text = L10n.whatSYourEmail
        self.lblEmailSubTitle.text = L10n.youLlNeedToConfirmThisEmailLater
        self.btnSend.setTitle(L10n.send, for: .normal)
    }
    
    func setData() {
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    @IBAction func btnSendTapped(_ sender: ThemeButton) {
        self.viewModel.apiForgotPassword(self.txtEmail.text!, vc: self)
    }
    
    @IBAction func btnBackTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
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
