//
//  NewTaskViewController.swift
//  RealmSample
//
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

/**
*  新しいタスクを追加する画面のViewController。
*/
class NewTaskViewController: UITableViewController {
    
    /// タイトルを入力するテキストフィールド
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - ボタン押下時の処理
    
    /**
    キャンセルボタン押下時の処理。
    
    :param: sender センダー
    */
    @IBAction func onCancelPushed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onSavePushed(sender: AnyObject) {
        var task = Task()
        task.title = titleTextField.text
        task.save()
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }


}
