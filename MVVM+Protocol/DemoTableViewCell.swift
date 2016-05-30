//
//  DemoTableViewCell.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var intro: UILabel!
    
    
    func updateWithPresenteble(presentble: cellPersentable)  {
        presentble.updateIconView(iconView)
        presentble.updateName(name)
        presentble.updateintro(intro)
    }
    
}
