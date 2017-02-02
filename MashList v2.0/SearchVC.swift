//
//  SearchVC.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit


class SearchVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITextFieldDelegate {
    
    @IBOutlet weak var collection: UICollectionView!
    
    var mediaItems = [MediaItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //dcs: updated this download method to include a completion handler which is called when you download all of the data for the request
        DataService.ds.downloadiTunesData { (DownloadedItems) in
            self.mediaItems = DownloadedItems
            
            self.collection.dataSource = self
            self.collection.delegate = self
            
            self.collection.reloadData()


        }
    }

    //CollectionView protocols:-
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let media = mediaItems[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ItemCell {
            
            cell.configureCell(item: media)
            return cell
            
        } else {
            
            return UICollectionViewCell() // if the above doesn't work, it returns an empty generic cell
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         //Need to include the perofrmSegue code here too...
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mediaItems.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //dcs:  updated size of item to show more content
        return CGSize(width: 140, height: 225)
    }

}


