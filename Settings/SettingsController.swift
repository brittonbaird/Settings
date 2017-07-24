//
//  SettingController.swift
//  Settings
//
//  Created by Britton Baird on 7/24/17.
//  Copyright © 2017 Britton Baird. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let shared = SettingsController()
    
    // MARK: - Internal Properties
    
    private let mySettings: [Setting]
    
    // MARK: - Computed Properties
    
    var numberOfSettings: Int {
        return mySettings.count
    }
    
    // MARK: - Initializers
    
    init() {
        let music = Setting(name: "Music", image: UIImage(named: "itunes"), isSet: false)
        let apps = Setting(name: "Apps", image:UIImage(named: "app"), isSet: true)
        let books = Setting(name: "Boooks", image:UIImage(named: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: UIImage(named: "app"), isSet: true)
        
        mySettings = [music, apps, books, updates]
    }
    
    // MARK: - Internal Methods
    
    func setting(at indexPath: IndexPath) -> Setting {
        return mySettings[indexPath.row]
    }
    
}
