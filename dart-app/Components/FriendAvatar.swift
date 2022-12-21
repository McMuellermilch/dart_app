//
//  FriendAvatar.swift
//  dart-app
//
//  Created by Florian Müller on 18.07.22.
//

import SwiftUI

struct FriendAvatar: View {
    var friend: FriendModel
    
    var body: some View {
        Image(friend.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
    }
}

struct FriendAvatar_Previews: PreviewProvider {
    static var previews: some View {
        FriendAvatar(friend: FriendMockData.sampleFriend)
    }
}
