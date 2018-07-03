//
//  Analytics+AnalyticsServiceProtocol.swift
//  SplitTests
//
//  Created by Alex Zimin on 18/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

extension Analytics: AnalyticsServiceProtocol {
    func setOnce(value: String, for key: String) {
        self.logOnce(property: value as NSObject, for: key)
    }
}
