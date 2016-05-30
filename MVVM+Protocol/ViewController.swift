//
//  ViewController.swift
//  MVVM+Protocol
//
//  Created by liuhongbao on 16/5/30.
//  Copyright © 2016年 liuhongbao. All rights reserved.
//

import UIKit

typealias newTableViewProtocol = protocol<UITableViewDelegate, UITableViewDataSource>

class ViewController: UIViewController, testProtocol, modelPersenter {

    var models: [DemoModel]!
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTableView()
        registerNib(tableView, name: "DemoTableViewCell", identifier: "cell")
        getModelsWith("heros") { self.tableView.reloadData() }
    }
}
extension ViewController: newTableViewProtocol{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! DemoTableViewCell
        
        let viewModel = DemoViewModel(model: models[indexPath.row])
        
        cell.updateWithPresenteble(viewModel)
        return cell
    }
}