//
//  DataService.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 01/02/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import Foundation
import Alamofire


class DataService {
    
    static let ds = DataService()
    
    var mediaTitles = [String]()
    var images = [String]()
   
    var mediaItem: MediaItem!
    
    

    func downloadiTunesData(completed: @escaping DownloadComplete) {
        Alamofire.request(TEST_URL).responseJSON(completionHandler: { (response) in
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                if let results = dict["results"] as? [Dictionary<String, AnyObject>] {
                    
                    if let title = results[0]["trackName"] as? String {
                        self.mediaTitles.append(title)
                       // mediaItem_mediaTitle = title.capitalized
                    }
//                    if let image = results[0]["artworkUrl100"] as? String {
//                        self.images.append(image)
//                    }
//                
//                    if let item = results[0]["longDescription"] as? String {
//                        self.mediaItem._itemDescription = item.capitalized
//                    }
//                    if let director = results[0]["artistName"] as? String {
//                        self.mediaItem._director = director.capitalized
//                    }
                    
                }
            }
            completed()
    })
    
    
    }
    
}

