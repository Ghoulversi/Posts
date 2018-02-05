//
//  DatabaseService.swift
//  data structure
//
//  Created by Minami on 28.10.17.
//  Copyright © 2017 Minami. All rights reserved.
//

import Foundation
import Firebase

class DatabaseService {
    
    static let shared = DatabaseService()
    private init() {}
    
    let postReference = Database.database().reference().child("posts")
    let beersReference = Database.database().reference().child("beers")
    
    
    
}
