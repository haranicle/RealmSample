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
    /// ID
    dynamic var identifier = 0
    
    /// タイトル
    dynamic var title = ""
    
    /// 完了しているか
    dynamic var isDone = false
    
    /// 所属しているグループ/// ID
    dynamic var dentifier = 0
    dynamic var group:Group?
}
