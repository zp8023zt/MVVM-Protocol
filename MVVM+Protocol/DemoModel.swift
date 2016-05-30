//
//  DemoModel.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

class DemoModel: NSObject {

    var intro: String?
    var name: String?
    var icon: String?
    
    
    convenience init(dict: [String: AnyObject]){
        self.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
}
