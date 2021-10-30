//
//  UserDB.swift
//  SB-2.3.1
//
//  Created by xubuntus on 30.10.2021.
//

import Foundation

struct User {
    var username: String
    var password: String
    var fullname: String
    var bio: String
}

struct DB {
    var users: [User]
    
    func getUsernames() -> String {
        guard users.count > 0 else { return "no user is found"}
        var usernames = "Your username is "
        for user in users.enumerated() {
            if user.offset > 0 {
                usernames += " or "
            }
            usernames += user.element.username
        }
        return "\(usernames) 🤫"
    }
}

var db = DB(users:[
    User(username: "Nik", password: "abyr", fullname: "Nikita Kazantsev", bio: "35 years old. System analyst. Like my wife, cats and Jeep Wrangler"),
    User(username: "Steeve", password: "thinkdiff", fullname: "Steve Jobs", bio: "Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company's board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.")
])
