//
//  Post.swift
//  Ask
//
//  Created by Mashael Alghunaim on 07/04/1444 AH.
//

import Foundation

struct  Post : Identifiable {
    let id = UUID()
    let authorName: String
    let timestampText: String
    let text: String
    let numberOfLikes: Int
    let title: String
    let category: String
    
}


    
