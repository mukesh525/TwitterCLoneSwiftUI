//
//  Message.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import Foundation

struct MockMessage: Identifiable {
    let id :Int
    let imageName:String
    let messageText:String
    let isCurrentUSer:Bool
 
}
let MOCK_MESSAGE:[MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hey Whats up ?", isCurrentUSer: false),
    .init(id: 1, imageName: "batman", messageText: "Not Much you ?", isCurrentUSer: true),
    .init(id: 2, imageName: "batman", messageText: "Hey Whats up ?", isCurrentUSer: true),
    .init(id: 3, imageName: "spiderman", messageText: "Hey Whats up ?", isCurrentUSer: false),
    .init(id: 4, imageName: "spiderman", messageText: "Hey Whats up ?", isCurrentUSer: false),
    .init(id: 5, imageName: "spiderman", messageText: "Its preety cool ?", isCurrentUSer: false),
    .init(id: 6, imageName: "spiderman", messageText: "Hows your battle wioth your joker?", isCurrentUSer: false),
    .init(id: 7, imageName: "batman", messageText: "Hey Whats up ?", isCurrentUSer: true),


]

