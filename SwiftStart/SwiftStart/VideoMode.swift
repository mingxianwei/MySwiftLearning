//
//  VideoMode.swift
//  SwiftStart
//
//  Created by mingxianwei on 2017/4/13.
//  Copyright © 2017年 mingxianwei. All rights reserved.
//

import Foundation

struct Resolution {
    var width = 0
    var heigth = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

