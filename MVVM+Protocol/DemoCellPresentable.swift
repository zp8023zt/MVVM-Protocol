//
//  DemoCellPresentable.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

protocol cellPersentable{
    var name: String{ get }
    var icon: String{ get }
    var intro: String{ get }
    func updateIconView(imageView: UIImageView)
    func updateName(label: UILabel)
    func updateintro(label: UILabel)
    
}

extension cellPersentable{
    func updateIconView(imageView: UIImageView){
        imageView.image = UIImage(named: icon)
    }
    func updateName(label: UILabel){
        label.text = name
    }
    func updateintro(label: UILabel){
        label.text = intro
    }
}