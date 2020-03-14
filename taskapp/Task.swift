//
//  Task.swift
//  taskapp
//
//  Created by 高橋怜杏 on 2020/03/10.
//  Copyright © 2020 saifa.libra. All rights reserved.
//

import  RealmSwift

class Task: Object {

    @objc dynamic var id = 0
    
     @objc dynamic var title = ""
    
     @objc dynamic var contents = ""
    
     @objc dynamic var date = Date()
    
    @objc dynamic var category: Category?
    
    override static func primaryKey() -> String? {
        return "id"
    }
   
}
class Category: Object {
    
    @objc dynamic var tasktype = ""
    
     @objc dynamic var id = 0
    
    override static func primaryKey() -> String? {
          return "id"
      }
}
