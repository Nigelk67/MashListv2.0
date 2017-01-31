//
//  MediaItem.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import Foundation
import Alamofire

class MediaItem {


private var _mediaTitle: String!
private var _director: String!
private var _itemDescription: String!
private var _image: String!

var image: String {
    if _image == nil {
            _image = ""
    }
    return _image
    }

var mediaTitle: String {
    if _mediaTitle == nil {
        _mediaTitle = ""
    }
    return _mediaTitle
}

var director: String {
    if _director == nil {
        _director = ""
    }
    return _director
}

var itemDescription: String {
    if _itemDescription == nil {
        _itemDescription = ""
    }
    return _itemDescription
}
        
    


func downloadiTunesData(completed: @escaping DownloadComplete) {
    Alamofire.request(TEST_URL).responseJSON(completionHandler: { (response) in
        if let dict = response.result.value as? Dictionary<String, AnyObject> {

            if let results = dict["results"] as? [Dictionary<String, AnyObject>] {
                if let director = results[0]["artistName"] as? String {
                    self._director = director.capitalized
                }
                if let mediaTitle = results[0]["trackName"] as? String {
                    self._mediaTitle = mediaTitle.capitalized
                }
                if let itemDescription = results[0]["longDescription"] as? String {
                    self._itemDescription = itemDescription.capitalized
                }
                if let image = results[0]["artworkUrl100"] as? String {
                    self._image = image
                }
                print(self._director)
                print(self._mediaTitle)
                print(self._itemDescription)
                print(self._image)
            }
            
        }
        completed()
    })
}

    
    
    
}

