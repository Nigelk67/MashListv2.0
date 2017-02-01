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
    var ds: DataService!
    

    func configureCell(item: MediaItem) {
        
       // self.nameLbl.text = ds.mediaTitle.capitalized
        
        self.thumbImg.image = UIImage(named: "\(self.mediaItem.image)")
        
    }
    
}
