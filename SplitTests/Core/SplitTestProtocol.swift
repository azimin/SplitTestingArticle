//
//  SplitTestProtocol.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

protocol SplitTestProtocol {
    associatedtype GroupType: SplitTestGroupProtocol
    static var identifier: String { get }

    var currentGroup: GroupType { get }

    var analytics: AnalyticsServiceProtocol { get }
    init(currentGroup: GroupType, analytics: AnalyticsServiceProtocol)
}

extension SplitTestProtocol {
    func hitSplitTest() {
        self.analytics.setOnce(value: self.currentGroup.rawValue, for: Self.analyticsKey)
    }

    static var analyticsKey: String {
        return "split_test-\(self.identifier)"
    }

    static var dataBaseKey: String {
        return "split_test_database-\(self.identifier)"
    }
}
