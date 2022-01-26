//
//  VideoManager.swift
//  VideoPlayer
//
//  Created by GB on 1/26/22.
//

import Foundation

enum Query: String, CaseIterable{
    case nature, animals, people, ocean, food
}

//Our Response body from the api

struct ResponseBody : Decodable{
    var page: Int
    var perpage : Int
    var totalresults: Int
    var url: String
    var videos: [Video]
}

struct Video: Identifiable, Decodable{
    var id: Int
    var image: String
    var duration: Int
    var user: User
    var videofiles: [VideoFile]
    
    struct User: Identifiable, Decodable{
        var id: Int
        var name: String
        var url: String
    }
    struct VideoFile: Identifiable, Decodable{
        var id: Int
        var quality: String
        var fileType: String
        var link: String
    }
}
