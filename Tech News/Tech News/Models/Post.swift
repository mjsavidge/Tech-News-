//
//  Post.swift
//  Tech News
//
//  Created by matthew savidge on 12/31/21.
//

import Foundation

struct Post : Identifiable, Decodable{
    var id : String{
        return objectID
    }
    let points : Int
    let url : String?
    let objectID: String
    let title : String
}
