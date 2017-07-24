//
//  Setting.swift
//  Settings
//
//  Created by Britton Baird on 7/24/17.
//  Copyright © 2017 Britton Baird. All rights reserved.
//

import UIKit

class Setting {
    
    // MARK: - Internal Properties
    
    let name: String
    let image: UIImage?
    var isSet: Bool
    
    // MARK: - Initializers
    
    init(name: String, image: UIImage?, isSet: Bool) {
        self.name = name
        self.image = image
        self.isSet = isSet
    }
}
