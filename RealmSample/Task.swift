//
//  Task.swift
//  RealmSample
//
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

/**
タスクを表すクラス。
*/
class Task: RLMObject {
    /// UUID
    dynamic var uuid = NSUUID().UUIDString
    
    /// タイトル
    dynamic var title = ""
    
    /// 完了しているか
    dynamic var isDone = false
    
    /// 保存したDate
    dynamic var savedDate = NSDate()
    
    override class func primaryKey() -> String {
        return "uuid"
    }
    
    
    /// isDoneを文字列で表現する
    func isDoneAsString() -> String {
        if isDone {
            return "Done🍣"
        }
        return "Doing🚀"
    }
    
    // MARK: - DB関連
    
    /**
    タスクをDBに記録する。
    */
    func save() {
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        realm.addObject(self)
        realm.commitWriteTransaction()
    }
    
    /**
    isDoneを変更してDBを更新する。
    */
    func updateIsDone(isDone:Bool) {
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        self.isDone = isDone
        realm.commitWriteTransaction()
    }
    
    
}