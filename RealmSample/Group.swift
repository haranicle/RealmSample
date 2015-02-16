//
//  Group.swift
//  RealmSample
//
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

/**
*  タスクのグループを表すクラス
*/
class Group: RLMObject {
    /// ID
    dynamic var identifier = 0
    
    /// タイトル
    dynamic var title = ""
}
