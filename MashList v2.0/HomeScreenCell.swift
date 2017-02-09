//
//  HomeScreenCell.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 08/02/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit

class HomeScreenCell: UITableViewCell {
    
    
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var titleDesc: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

   
    func updateUI(mediaItem: MediaItem) {
        
        titleLbl.text = mediaItem.mediaTitle
        directorLabel.text = mediaItem.director
        titleDesc.text = mediaItem.itemDescription
        
        
    }
    

}
