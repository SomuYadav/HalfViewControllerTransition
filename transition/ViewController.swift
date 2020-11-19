//
//  ViewController.swift
//  transition
//
//  Created by Somendra Yadav on 20/11/20.
//  Copyright © 2020 Somendra Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionPresent(_ sender: UIBarButtonItem) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "ViewControllerCopy")
        let vc = CustomActivityViewController(controller: vc1!)
        self.present(vc, animated: true, completion: nil)
    }
}


class CustomActivityViewController: UIActivityViewController {

    private let controller: UIViewController!

    required init(controller: UIViewController) {
        self.controller = controller
        super.init(activityItems: [], applicationActivities: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let subViews = self.view.subviews
        for view in subViews {
            view.removeFromSuperview()
        }

        self.addChild(controller)
        self.view.addSubview(controller.view)
    }

}
