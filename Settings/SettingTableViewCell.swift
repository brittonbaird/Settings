//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Britton Baird on 7/24/17.
//  Copyright © 2017 Britton Baird. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    // Label
    @IBOutlet weak var settingLabel: UILabel!
    
    // MARK: - Lifcycle
    
    func updateViews(with setting: Setting?) {
        guard let setting = setting else { return }
        // Update the label
        settingLabel.text = setting.name
        // Update image
        iconImageView.image = setting.image
        // Update the switch 
        settingSwitch.isOn = setting.isSet
        // Update the bg color
        backgroundColor = setting.isSet ? .yellow : .white
        
    }
    
}
