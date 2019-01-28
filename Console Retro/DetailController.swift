//
//  DetailController.swift
//  Console Retro
//
//  Created by Anthony Jean on 28/01/2019.
//  Copyright © 2019 Anthony Jean. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    var console: Console?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard console != nil else { return }
        title = console!.name
    }

    
    

}
