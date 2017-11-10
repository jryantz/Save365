//
//  MenuCell.swift
//  Save365
//
//  Created by Jonathan Yantz on 11/9/17.
//  Copyright © 2017 Jonathan Yantz. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
        
    }
    
    let buttonView: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.rgba(r: 0, g: 0, b: 0, a: 0.6)
        label.textAlignment = .center
        label.font = label.font.withSize(17)
        
        label.backgroundColor = UIColor.orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Check if the menu button is currently selected - if so, make it white, otherwise make it gray.
    override var isSelected: Bool {
        
        didSet {
            buttonView.textColor = isSelected ? UIColor.white : UIColor.rgba(r: 0, g: 0, b: 0, a: 0.6)
        }
        
    }
    
    // Check if the menu button is being pressed - if so, make it white, otherwise make it gray.
    override var isHighlighted: Bool {
        
        didSet {
            buttonView.textColor = isHighlighted ? UIColor.white : UIColor.rgba(r: 0, g: 0, b: 0, a: 0.6)
        }
        
    }
    
    func setupViews() {
        
        addSubview(buttonView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: buttonView)
        addConstraintsWithFormat(format: "V:[v0(50)]", views: buttonView)
        
        buttonView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        buttonView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
