//
//  AnalyticsServiceProtocol.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

protocol AnalyticsServiceProtocol {
    func setOnce(value: String, for key: String)
}
