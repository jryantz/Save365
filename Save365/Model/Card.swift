//
//  Card.swift
//  Save365
//
//  Created by Jonathan Yantz on 11/7/17.
//  Copyright © 2017 Jonathan Yantz. All rights reserved.
//

import UIKit

class Card: NSObject {
    
    var order: Int
    var title: String
    var content: String
    var focus: String
    
    init(order: Int, title: String, content: String, focus: String) {
        
        self.order = order
        self.title = title
        self.content = content
        self.focus = focus
        
    }
    
}
