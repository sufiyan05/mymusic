//
//  ProfileVC.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 14/04/22.
//

import Foundation
import UIKit

class ProfileVC: UIViewController {
    
    //MARK: - IBoutlet Variables -
    
    //----------------------------------------------------------------------
    
    //MARK: - Custom Variables -
    
    //----------------------------------------------------------------------
    
    //MARK: - custom Methods -
    
    //----------------------------------------------------------------------
    
    //MARK: - IBAction Methods -
    
    //----------------------------------------------------------------------
    
    //MARK: - View Controller Life Cycle Methods -
    override func viewDidLoad() {
        super.viewDidLoad()
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
