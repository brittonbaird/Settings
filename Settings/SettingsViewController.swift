//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Britton Baird on 7/24/17.
//  Copyright © 2017 Britton Baird. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    // MARK: - TableView DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.numberOfSettings
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as? SettingTableViewCell
        let setting = SettingsController.shared.setting(at: indexPath)
        cell?.updateViews(with: setting)
        
        return cell ?? UITableViewCell()
    }

    
}
