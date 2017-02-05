//
//  PopUpVC.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 05/02/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var popUpView: UIView!
    
    var item: MediaItem!
    
    
    @IBAction func closePopUp(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = item.mediaTitle

        popUpView.layer.cornerRadius = 20
        //popUpView.layer.masksToBounds = true
        
        
    }

    
    
    
    
    
    
   
}
