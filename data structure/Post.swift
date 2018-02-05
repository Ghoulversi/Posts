//
//  Post.swift
//  data structure
//
//  Created by Minami on 28.10.17.
//  Copyright © 2017 Minami. All rights reserved.
//

import Foundation

struct Post {
    
    let postID: String
    let username: String
    let message: String
    let date: Date
    
    init?(postID: String, dict: [String: Any]) {
        self.postID = postID
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss +zzzz"
        
        guard let username = dict["username"] as? String,
              let message = dict["message"] as? String,
              let dateString = dict["date"] as? String,
              let date = dateFormatter.date(from: dateString)
            else {return nil }
        
        self.username = username
        self.message = message
        self.date = date
        
    }
}
