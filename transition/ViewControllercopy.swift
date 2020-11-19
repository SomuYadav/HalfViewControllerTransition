//
//  ViewController.swift
//  transition
//
//  Created by Somendra Yadav on 20/11/20.
//  Copyright © 2020 Somendra Yadav. All rights reserved.
//

import UIKit

class ViewControllerCopy: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = CustomActivityViewController(controller: self)
        self.present(vc, animated: true, completion: nil)
    }
}
