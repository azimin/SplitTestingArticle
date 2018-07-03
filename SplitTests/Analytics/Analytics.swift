//
//  Analytics.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

// Dummy class for example, use something real, like Amplitude
class Analytics {
    func logOnce(property: NSObject, for key: String) {
        let storageKey = "example.\(key)"
        if UserDefaults.standard.object(forKey: storageKey) == nil {
            print("Log once value: \(property) for key: \(key)")
            UserDefaults.standard.set("", forKey: storageKey) // String because of simulator bug
        }
    }
}
