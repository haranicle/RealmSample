//
//  Task.swift
//  RealmSample
//
//  Created by MTER on 2015/02/16.
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
    
    /// 所属しているグループ
    dynamic var group:Group?
}
