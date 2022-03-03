//
//  PostData.swift
//  H4X0R News
//
//  Created by Rafsan Al Mamun on 3/3/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

// Decodable allows JSON format to be decoded to this struct; Identifiable allows ListView to populate results using this struct
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
