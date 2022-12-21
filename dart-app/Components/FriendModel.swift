//
//  FriendModel.swift
//  dart-app
//
//  Created by Florian Müller on 18.07.22.
//

import Foundation

struct FriendModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    
    
}

struct FriendMockData {
    static let sampleFriend = FriendModel(name: "Sebi", image: "christopher-campbell-rDEOVtE7vOs-unsplash")
    
    static let friends = [
        FriendModel(name: "Sebi", image: "christopher-campbell-rDEOVtE7vOs-unsplash"),
        FriendModel(name: "Sebi", image: "leilani-angel-K84vnnzxmTQ-unsplash"),
        FriendModel(name: "Sebi", image: "IMG_3679"),
        FriendModel(name: "Sebi", image: "cesar-rincon-XHVpWcr5grQ-unsplash"),
    ]
}
