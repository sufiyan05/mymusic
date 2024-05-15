//
//  OTPVarificationVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class OTPVarificationVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    @IBOutlet weak var txtCodeOne: OTPTextField!
    @IBOutlet weak var txtCodeTwo: OTPTextField!
    @IBOutlet weak var txtCodeThree: OTPTextField!
    @IBOutlet weak var txtCodeFour: OTPTextField!
    @IBOutlet weak var btnNext: UIButton!
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    private let viewModel = OTPVarificationVM()
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    func setup() {
        
    }
    
    func applyStyle() {
        self.lblTitle.text = L10n.convallisArcuAtTurpisVelHabitantPretiumVelitSuscipit
        self.lblSubTitle.text = L10n.diamQuisqueEtLiberoDiamPhasellusFaucibusMalesuadaNislMattis
        self.btnNext.setTitle(L10n.next, for: .normal)
    }
    
    func setData() {
        
    }
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    
    @IBAction func btnNextTapped(_ sender: UIButton) {
        self.viewModel.apiOTPVarification(codeOne: self.txtCodeOne.text!, codeTwo: self.txtCodeTwo.text!, codeThree: self.txtCodeThree.text!, codeFour: self.txtCodeFour.text!, vc: self)
        
//        let vcChoosePodcast = StoryboardScene.Authentication.choosePodcastVC.instantiate()
//        self.navigationController?.pushViewController(vcChoosePodcast, animated: true)
    }
    
    @IBAction func btnBackTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
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
