//
//  SearchVC.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import UIKit


class SearchVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITextFieldDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var mediaItems = [MediaItem]()
    var mItem: MediaItem = MediaItem()
    
    var searchItem: String!
    var trimmedText: String!
    var itemTitle: String?
    var searchUrl: String!
    
    
    //Create array for the search function:-
    var filteredItems = [MediaItem]()
    
    // For the search bar functionality (see further down):-
    var inSearchMode = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //dcs: updated this download method to include a completion handler which is called when you download all of the data for the request
        DataService.ds.downloadiTunesData { (DownloadedItems) in
            self.mediaItems = DownloadedItems
        }
        
            self.collection.dataSource = self
            self.collection.delegate = self
            
         //   self.searchBar.delegate = self
        
        
        
           //self.collection.reloadData()
//    }
}

//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        if searchBar.text == nil || searchBar.text == "" {
//            inSearchMode = false
//            collection.reloadData()
//        } else {
//            inSearchMode = true
//            
//            if (searchBar.text?.replacingOccurrences(of: " ", with: "")) != nil {
//                //searchUrl = "\(CORE_URL)\(trimmedText)\(COUNTRY)\(TYPE)"
//            
//            
//            print(SEARCH_URL)
//            
//             DataService.ds.downloadiTunesData { (DownloadedItems) in
//                self.mediaItems = DownloadedItems
//                    }
//            self.collection.reloadData()
//            searchBar.resignFirstResponder()
//            } else {
//                print("Invalid search")
//            }
//        }
//    }
    
    
    
    
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
        
        let media = mediaItems[indexPath.row]
        
         performSegue(withIdentifier: "PopUpVC", sender: media)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mediaItems.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        //dcs:  updated size of item to show more content
//        return CGSize(width: 140, height: 225)
//    }

    
    
    
    

//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        if searchBar.text == nil || searchBar.text == "" {
//            inSearchMode = false
//            collection.reloadData()
//        } else {
//            inSearchMode = true
//            if let trimmedText = searchBar.text?.replacingOccurrences(of: " ", with: "") {
//            TITLE = TITLE.replacingOccurrences(of: "Fight Club", with: trimmedText)
//            }
//            print(SEARCH_URL)
//            DataService.ds.downloadiTunesData { (DownloadedItems) in
//            self.mediaItems = DownloadedItems
//            
//            searchBar.resignFirstResponder()
//        }
//    }
//}
    
    
    
    
}


