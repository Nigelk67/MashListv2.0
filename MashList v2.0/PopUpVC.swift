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
    @IBOutlet weak var centerPopupConstraint: NSLayoutConstraint!
    @IBOutlet weak var RecommendPopUpView: UIView!
    
    var item: MediaItem!
    
    
    @IBAction func closePopUp(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = item.mediaTitle

        popUpView.layer.cornerRadius = 20
        //popUpView.layer.masksToBounds = true
        RecommendPopUpView.layer.cornerRadius = 20
    //    RecommendPopUpView.layer.masksToBounds = true
        
    
        
    }

    
    @IBAction func ShowRecommendedPopup(_ sender: UIButton) {
        centerPopupConstraint.constant = 0
        popUpView.isHidden = true
        // With Spring Dampers, the higher the number (max = 1) the less bounce you get:-
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    @IBAction func closeRecommendedPopUp(_ sender: UIButton) {
        
        centerPopupConstraint.constant = -320
        popUpView.isHidden = false
        UIView.animate(withDuration: 0.1, animations: {
            self.view.layoutIfNeeded()
        })
        
    }
    
    
    
    
   
}
