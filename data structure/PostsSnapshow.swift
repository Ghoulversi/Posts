//
//  PostsSnapshow.swift
//  data structure
//
//  Created by Minami on 28.10.17.
//  Copyright © 2017 Minami. All rights reserved.
//

import Foundation
import Firebase

struct PostsSnapshot {
    
    let posts: [Post]
    
    init?(with snapshot: DataSnapshot) {
        var posts = [Post]()
        guard let  snapDict = snapshot.value as? [String: [String: Any]] else {return nil}
        
       for snap in snapDict {
            guard let post = Post(postID: snap.key, dict: snap.value) else {continue }
                posts.append(post)
        }
        self.posts = posts
    }
    
}
