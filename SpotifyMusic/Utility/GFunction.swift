//
//  GFunction.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import Foundation
import UIKit

class GFunction {
    
    static var shared = GFunction()
    
    func getWindow() -> UIWindow? {
        return UIApplication.shared.windows.first ?? nil
    }
    
    func setDefaults() {
        defaults.set(true, forKey: "isLogin")
        defaults.synchronize()
        GFunction.shared.setRootController()
    }
    
    func setRootController() {
        let isLogin = defaults.bool(forKey: "isLogin")
        
        if isLogin {
            self.setHomePage()
        } else {
            self.setLoginPage()
        }
    }
    
    func setHomePage() {
        guard let window = self.getWindow() else { return }
        let rootController = kHomeStoryboard.instantiateViewController(withIdentifier: "RoundTabbarVC") as! UITabBarController
        window.rootViewController = rootController
        window.makeKeyAndVisible()
    }
    
    func setLoginPage() {
        guard let window = self.getWindow() else { return }
        
        let rootController = kAuthStoryboard.instantiateViewController(withIdentifier: "navStartScreen") as! UINavigationController
        window.rootViewController = rootController
        window.makeKeyAndVisible()
    }
}

