//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Dmitry Reshetnik on 9/24/19.
//  Copyright © 2019 Dmitry Reshetnik. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageViewController = segue.destination.contents as? ImageViewController {
                    imageViewController.imageURL = url
                    imageViewController.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }

}

extension UIViewController {
    var contents: UIViewController {
        if let navigationController = self as? UINavigationController {
             return navigationController.visibleViewController ?? self
        } else {
            return self
        }
    }
}
