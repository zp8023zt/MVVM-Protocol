//
//  DemoViewModel.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

struct DemoViewModel: cellPersentable {
    var name: String
    var icon: String
    var intro: String
    
    init(model: DemoModel){
        name = model.name!
        icon = model.icon!
        intro = model.intro!
    }
}