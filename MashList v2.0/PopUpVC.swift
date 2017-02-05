//
//  PopUpVC.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 05/02/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    
    
    @IBOutlet weak var popUpView: UIView!
    
    @IBAction func closePopUp(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        popUpView.layer.cornerRadius = 10
        //popUpView.layer.masksToBounds = true
        
        
    }

    
    
    
    
    
    
   
}
