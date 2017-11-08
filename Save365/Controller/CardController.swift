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
        
        // Add a name for the view controller and remove the translucency.
        navigationItem.title = "Save365"
        navigationController?.navigationBar.isTranslucent = false
        
        // Create the title bar with a design and text.
        let titleLabel = UILabel(frame: CGRect.init(x: view.frame.width/2 - 80, y: 0, width: 160, height: 40))
        titleLabel.text = "Save365"
        titleLabel.textColor = UIColor.white
        titleLabel.font = titleLabel.font.withSize(18)
        titleLabel.textAlignment = .center
        navigationItem.titleView = titleLabel
        
        // Add the collection view to the view controller.
        collectionView?.register(CardCell.self, forCellWithReuseIdentifier: "CardCell")
        collectionView?.backgroundColor = UIColor.clear
        
        let gl = CAGradientLayer()
        gl.frame = view.frame
        gl.colors = [UIColor.rgba(r: 66, g: 167, b: 244, a: 1).cgColor, UIColor.rgba(r: 27, g: 133, b: 214, a: 1).cgColor]
        gl.locations = [0.0, 1.0]
        
        collectionView?.layer.addSublayer(gl)
        
    }
    
    var card: [Card] = [Card]()
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cardCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
        
        cardCell.card = card[indexPath.item]
        return cardCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = view.frame.width - 40
        return CGSize(width: size, height: 60)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20.0)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Do something when a row is selected.
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
}
