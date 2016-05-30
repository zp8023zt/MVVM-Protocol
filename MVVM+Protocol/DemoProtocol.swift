//
//  DemoProtocol.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

protocol testProtocol{
    
    var tableView: UITableView! { get set }
    
    func addTableView()
    func registerNib(tableView: UITableView, name: String, identifier: String)
    
}

extension testProtocol where Self: ViewController{
    
    func addTableView(){
        tableView = UITableView(frame: view.bounds)
        tableView.rowHeight = 50
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func registerNib(tableView: UITableView, name: String, identifier: String){
        tableView.registerNib(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: identifier)
    }
}
