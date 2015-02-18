//
//  Task.swift
//  RealmSample
//
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

/**
*  タスクを表すクラス。
*/
class Task: RLMObject {
    /// タイトル
    dynamic var title = ""
    
    /// 完了しているか
    dynamic var isDone = false
    
    /// 保存したDate
    dynamic var savedDate = NSDate()
    
    
    /// isDoneを文字列で表現する
    func isDoneAsString() -> String {
        if isDone {
            return "👍"
        }
        return "✋"
    }
}