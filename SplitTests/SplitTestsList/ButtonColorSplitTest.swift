//
//  ButtonColorSplitTest.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation
import UIKit

final class ButtonColorSplitTest: SplitTestProtocol {
    static var identifier: String = "button_color"

    var currentGroup: ButtonColorSplitTest.Group
    var analytics: AnalyticsServiceProtocol

    init(currentGroup: ButtonColorSplitTest.Group, analytics: AnalyticsServiceProtocol) {
        self.currentGroup = currentGroup
        self.analytics = analytics
    }

    typealias GroupType = Group

    enum Group: String, SplitTestGroupProtocol {
        case red = "red"
        case blue = "blue"
        case darkGray = "dark_gray"

        static var testGroups: [ButtonColorSplitTest.Group] = [.red, .blue, .darkGray]
    }
}

extension ButtonColorSplitTest.Group {
    var color: UIColor {
        switch self {
        case .blue:
            return .blue
        case .red:
            return .red
        case .darkGray:
            return .darkGray
        }
    }
}
