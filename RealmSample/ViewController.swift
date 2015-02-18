//
//  ViewController.swift
//  RealmSample
//
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    /// テーブルビュー
    @IBOutlet weak var tableView: UITableView!
    
    /// タスク一覧のRLMResults
    var tasks = Task.allObjects().sortedResultsUsingProperty("savedDate", ascending: false)
    
    /// タスク一覧が変更された時の処理
    var tasksNotificationToken:RLMNotificationToken?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タスク一覧が変更された時の処理を登録する。
        tasksNotificationToken = RLMRealm.defaultRealm().addNotificationBlock{ note, realm in
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(tasks.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        let task = tasks[UInt(indexPath.row)] as Task
        cell.textLabel?.text = task.title
        cell.detailTextLabel?.text = task.isDoneAsString()
        
        return cell
    }

}

