//
//  Chat.swift
//  evemeni
//
//  Created by 滝浪翔太 on 2020/02/06.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

struct Chat {
    
    var users: [String]
    
    var dictionary: [String: Any] {
        return [
            "users": users
        ]
    }
}

extension Chat {
    
    init?(dictionary: [String:Any]) {
        guard let chatUsers = dictionary["users"] as? [String] else {return nil}
        self.init(users: chatUsers)
    }
}
