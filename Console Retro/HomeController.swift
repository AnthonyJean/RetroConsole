//
//  HomeController.swift
//  Console Retro
//
//  Created by Anthony Jean on 28/01/2019.
//  Copyright © 2019 Anthony Jean. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var retroIV: UIImageView!
    
    var consoles: [Console] = []
    var index = 0
    var segueID = "Detail"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toDetail))
        retroIV.isUserInteractionEnabled = true
        retroIV.addGestureRecognizer((tap))
        setup()
    }
    
    @objc func toDetail() {
        performSegue(withIdentifier: segueID, sender: nil)
    }
    
    func setup() {
        let console = consoles[index]
        titleLabel.text = "Console Retro\n" + console.name
        retroIV.image = console.image
        view.backgroundColor = console.color
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let controller = segue.destination as? DetailController {
                controller.console = consoles[index]
            }
        }
    }
    
    
    @IBAction func previousPressed(_ sender: Any) {
        if index == 0 {
            index = consoles.count - 1
        } else {
            index -= 1
        }
        setup()
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        if index == consoles.count - 1 {
            index = 0
        } else {
            index += 1
        }
        setup()
        
    }
    
    @IBAction func randomPressed(_ sender: Any) {
        index = Int.random(in: 0..<consoles.count)
        setup()
    }
    
}
