//
//  CardController.swift
//  Save365
//
//  Created by Jonathan Yantz on 11/7/17.
//  Copyright © 2017 Jonathan Yantz. All rights reserved.
//

import UIKit

class CardController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Add the collection view to the view controller.
        collectionView?.register(CardCell.self, forCellWithReuseIdentifier: "CardCell")
        collectionView?.backgroundColor = UIColor.clear
        
        let gl = CAGradientLayer()
        gl.frame = view.frame
        gl.colors = [UIColor.rgba(r: 66, g: 167, b: 244, a: 1).cgColor, UIColor.rgba(r: 27, g: 133, b: 214, a: 1).cgColor]
        gl.locations = [0.0, 1.0]
        
        collectionView?.layer.addSublayer(gl)
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
}
