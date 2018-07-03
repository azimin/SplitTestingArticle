//
//  ViewController.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let splitTestingService = ServiceLocator.shared.splitTesting
        let buttonSplitTest = splitTestingService.fetchSplitTest(ButtonColorSplitTest.self)
        self.button.backgroundColor = buttonSplitTest.currentGroup.color

        buttonSplitTest.hitSplitTest()
    }
}

