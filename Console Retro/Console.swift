//
//  Console.swift
//  Console Retro
//
//  Created by Anthony Jean on 28/01/2019.
//  Copyright © 2019 Anthony Jean. All rights reserved.
//

import UIKit

class Console {
    private var _name: String
    private var _image: UIImage?
    private var _color: UIColor
    private var _start: Int
    private var _end: Int
    private var _desc: String
    
    var name: String {
        return _name
    }
    
    var image: UIImage? {
        return _image
    }
    
    var color: UIColor {
        return _color
    }
    
    var desc: String {
        return _desc
    }
    
    init(name: String, start: Int, end: Int, rgb: [CGFloat], desc: String) {
        self._name = name
        self._image = UIImage(named: name + ".png")
        self._start = start
        self._end = end
        self._color = UIColor.lightGray
        self._desc = desc
        if rgb.count == 3 {
            self._color = colorFrom(red: rgb[0], green: rgb[1], blue: rgb[2])
        }
    }
    
    func colorFrom(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    func lifeCycle() -> String {
        return "Debut: \(_start) - Fin \(_end)"
    }
    
}
