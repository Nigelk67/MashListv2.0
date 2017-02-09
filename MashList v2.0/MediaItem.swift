//
//  MediaItem.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import Foundation

class MediaItem {


//private var _mediaTitle: String!
private var _director: String!
private var _itemDescription: String!
private var _image: String!
private var _mediaTitle: String!
private var _imgURL: String!
private var _artistName: String!
    private var _price: String!
    
    //For tableview on HomeScreen:-
    
//    init(imgURL: String, director: String, itemDescription: String, mediaTitle: String) {
//        
//        _imgURL = imgURL
//        _director = director
//        _itemDescription = itemDescription
//        _mediaTitle = mediaTitle
//        
//    }
    
    var Price: String {
        get {
            if _price == nil {
                _price = ""
            }
            
            return _price
            
        }
        
        set {
            _price = newValue
        }
    }

    
    var imgURL: String {
        get {
            if _imgURL == nil {
                _imgURL = ""
            }
            
            return _imgURL

        }
        
        set {
            _imgURL = newValue
        }
    }

var image: String {
    if _image == nil {
            _image = ""
    }
    return _image
    }

var mediaTitle: String {
    
    
    get {
        if _mediaTitle == nil {
            _mediaTitle = ""
        }
        return _mediaTitle
    }
    
    set {
        _mediaTitle = newValue
    }
}

var director: String {
    get {
        
    if _director == nil {
        _director = ""
    }
    return _director
}
    set {
        _director = newValue
    }
}
    
    
var itemDescription: String {
    
    
    get {
        if _itemDescription == nil {
            _itemDescription = ""
        }
        return _itemDescription
    }
    
    set {
        _itemDescription = newValue
    }
}
    
    var ArtistName: String {
        get {
            if _artistName == nil {
                _artistName = ""
            }
            
            return _artistName
        }
        set {
            _artistName = newValue
        }
        
    }
        
    


//func downloadiTunesData(completed: @escaping DownloadComplete) {
//    Alamofire.request(TEST_URL).responseJSON(completionHandler: { (response) in
//        if let dict = response.result.value as? Dictionary<String, AnyObject> {
//
//            if let results = dict["results"] as? [Dictionary<String, AnyObject>] {
//                if let director = results[0]["artistName"] as? String {
//                    self._director = director.capitalized
//                }
//                if let mediaTitle = results[0]["trackName"] as? String {
//                    self._mediaTitle = mediaTitle.capitalized
//                }
//                if let itemDescription = results[0]["longDescription"] as? String {
//                    self._itemDescription = itemDescription.capitalized
//                }
//                if let image = results[0]["artworkUrl100"] as? String {
//                    self._image = image
//                }
//                print(self._director)
//                print(self._mediaTitle)
//                print(self._itemDescription)
//                print(self._image)
//            }
//            
//        }
//        completed()
//    })
//}

    
    
    
}

