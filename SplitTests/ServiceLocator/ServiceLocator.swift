//
//  ServiceLocator.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

class ServiceLocator {
    private static var _shared: ServiceLocator?
    static var shared: ServiceLocator {
        if let value = _shared {
            return value
        } else {
            assertionFailure("You should configure service before first usage")
            let value = self.configureServices()
            return value
        }
    }

    let analytics: AnalyticsServiceProtocol
    let storage: StorageServiceProtocol
    let splitTesting: SplitTestingServiceProtocol

    init(analytics: AnalyticsServiceProtocol, storage: StorageServiceProtocol, splitTesting: SplitTestingServiceProtocol) {
        self.analytics = analytics
        self.storage = storage
        self.splitTesting = splitTesting
    }

    @discardableResult
    static func configureServices() -> ServiceLocator {
        let analytics = Analytics()
        let storage = UserDefaults.standard
        let splitTesting = SplitTestingService(analyticsService: analytics,
                                               storage: storage)

        let value = ServiceLocator(analytics: analytics,
                                   storage: storage,
                                   splitTesting: splitTesting)
        ServiceLocator._shared = value
        return value
    }
}
