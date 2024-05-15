//
//  HomeVM.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 13/04/22.
//

import Foundation
import UIKit

class HomeVM {
    
    //MARK: - Variables -
    private var arrFirstPlayList = [PlayListModel]()
    private var arrSecondPlayList = [PlayListModel]()
    //MARK: - Methods -
    func setData() {
        //First Play List
        self.arrFirstPlayList.append(PlayListModel(image: .darkPlaylistOne.image))
        self.arrFirstPlayList.append(PlayListModel(image: .darkPlaylistTwo.image))
        self.arrFirstPlayList.append(PlayListModel(image: .darkPlaylistOne.image))
        self.arrFirstPlayList.append(PlayListModel(image: .darkPlaylistTwo.image))
        
        //Second Play List
        self.arrSecondPlayList.append(PlayListModel(image: .boyOne.image))
        self.arrSecondPlayList.append(PlayListModel(image: .boyTwo.image))
        self.arrSecondPlayList.append(PlayListModel(image: .boyOne.image))
        self.arrSecondPlayList.append(PlayListModel(image: .boyOne.image))
        self.arrSecondPlayList.append(PlayListModel(image: .boyTwo.image))
        self.arrSecondPlayList.append(PlayListModel(image: .boyOne.image))
    }
    
    func numberOfRowsFirstPlayList() -> Int {
        return self.arrFirstPlayList.count
    }
    
    func numberOfRowsSecondPlayList() -> Int {
        return self.arrSecondPlayList.count
    }
    
    func valueForFirstPlayListCell(_ row: Int) -> PlayListModel {
        return self.arrFirstPlayList[row]
    }
    
    func valueForSecondPlayListCell(_ row: Int) -> PlayListModel {
        return self.arrSecondPlayList[row]
    }
}

extension HomeVM {
    func apiHome() {
        
    }
}
