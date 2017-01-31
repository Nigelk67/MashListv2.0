//
//  ItemCell.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    
    var mediaItem: MediaItem!
    
    
    
    func configureCell(_ mediaItem: MediaItem) {
        
        self.mediaItem = mediaItem
        
        self.nameLbl.text = mediaItem.mediaTitle.capitalized
        
        self.thumbImg.image = UIImage(named: "\(self.mediaItem.image)")
        
    }
    
}
