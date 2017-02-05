//
//  Constants.swift
//  MashList v2.0
//
//  Created by Nigel Karan on 30/01/17.
//  Copyright © 2017 MashBin. All rights reserved.
//

import Foundation

var search: SearchVC!

let CORE_URL = "https://itunes.apple.com/search?term="
let COUNTRY = "&country=GB"
let TYPE = "&entity=movie"
let TEST_URL = "https://itunes.apple.com/search?term=FightClub&country=GB&entity=movie"

let SEARCH_URL = "\(CORE_URL)\(search.searchBar.text)\(COUNTRY)\(TYPE)"




typealias DownloadComplete = () -> ()






