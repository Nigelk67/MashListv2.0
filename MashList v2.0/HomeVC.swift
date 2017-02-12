//
//  HomeVC.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 08/02/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    //Array for the item - something like - var mediaItems = [MediaItem]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeScreenCell", for: indexPath) as? HomeScreenCell {
            
            //Need to pass in the array for the item from SearchVC selected:-
            //let mediaItem = THIS SHOULD BE THE ARRAY FROM THE MEDIA ITEM (SEE ABOVE) mediaItems[indexPath.row]
            // ensure the numberofRowsInSection function is equal to mediaItems.count, then it will only include this count
            //cell.updateUI(mediaItem: mediaItem)
            return cell
            
        } else {
        
        return UITableViewCell()
    }
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "SearchVC", sender: "HomeVC")
    }
    
    
    
}
