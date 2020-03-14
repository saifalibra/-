//
//  ViewController2.swift
//  taskapp
//
//  Created by 高橋怜杏 on 2020/03/13.
//  Copyright © 2020 saifa.libra. All rights reserved.
//

import UIKit
import RealmSwift
import UserNotifications

class ViewController2: UIViewController {

    @IBOutlet weak var addCategory: UITextField!
     let realm = try! Realm()
    var category: Category!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
            self.view.addGestureRecognizer(tapGesture)
        
        
        addCategory.text = category.tasktype
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        try! realm.write {
        
            self.category.tasktype = self.addCategory.text!
            self.realm.add(self.category, update: .modified)
        }
    }
    @objc func dismissKeyboard(){
           view.endEditing(true)
       }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
