//
//  MenuBar.swift
//  Save365
//
//  Created by Jonathan Yantz on 11/9/17.
//  Copyright © 2017 Jonathan Yantz. All rights reserved.
//

import UIKit

class MenuBar: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.backgroundColor = UIColor.rgba(r: 6, g: 107, b: 184, a: 1) //blue
        cv.dataSource = self
        cv.delegate = self
        
        return cv
    }()
    
    let menu = ["Buckets", "Home", "Budgets"]
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        collectionView.register(MenuCell.self, forCellWithReuseIdentifier: "MenuCell")
        
        addSubview(collectionView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: collectionView)
        
        let selected = NSIndexPath(item: 1, section: 0)
        collectionView.selectItem(at: selected as IndexPath, animated: false, scrollPosition: .top)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return menu.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCell
        
        cell.buttonView.text = menu[indexPath.item]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize.init(width: frame.width / 3, height: frame.height)
        
    }
    
    // Change the spacing between the cells in the menu bar.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
