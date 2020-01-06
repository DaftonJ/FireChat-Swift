//
//  Constants.swift
//  FireChat
//
//  Created by Dawid Jaskulski on 05/01/2020.
//  Copyright © 2020 Dawid Jaskulski. All rights reserved.
//

import Foundation

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let appName = "🔥FireChat"
    
    struct BrandColors {
        static let youTextColor = "YouTextColor"
        static let youBackgroundColor = "YouBackgroundColor"
        static let meTextColor = "MeTextColor"
        static let meBackgroundColor = "MeBackgroundColor"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
