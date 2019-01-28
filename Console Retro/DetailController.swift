//
//  DetailController.swift
//  Console Retro
//
//  Created by Anthony Jean on 28/01/2019.
//  Copyright © 2019 Anthony Jean. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var retroIV: UIImageView!
    
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var descTextView: UITextView!
    
    
    var console: Console?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard console != nil else { return }
        title = console!.name
        titleLabel.text = console!.name
        retroIV.image = console!.image
        lifeLabel.text = console!.lifeCycle()
        descTextView.text = console!.desc
        view.backgroundColor = console!.color
    }

    
    

}
