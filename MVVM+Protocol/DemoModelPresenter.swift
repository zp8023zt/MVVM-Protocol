//
//  DemoModelPresenter.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

protocol modelPersenter {
    
    var models: [DemoModel]! {get set}
    
    func getModelsWith(name: String, notifyHandler: (Void -> Void)?)
    
}


extension modelPersenter where Self: ViewController{
    
    func getModelsWith(name: String, notifyHandler: (Void -> Void)?){
        
        let path = NSBundle.mainBundle().pathForResource(name, ofType: "plist")
        let dicts = NSArray(contentsOfFile: path!) as! [[String: AnyObject]]
        models = dicts.map { DemoModel(dict: $0) }
        debugPrint(models)
        notifyHandler?()
    }
    

}