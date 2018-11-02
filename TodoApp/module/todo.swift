//
//  todo.swift
//  TodoApp
//
//  Created by XiaoQian Huang on 10/24/18.
//  Copyright © 2018 XiaoQian Huang. All rights reserved.
//

//import Foundation
import UIKit

class todo{
    
    var list: [String]?
    //this is defined array to store the tasks
    var listMark: [Int]?
    // the array used to check the task's conditins
    
    let userDefault = UserDefaults.standard
    
    init(){
        if let test = userDefault.array(forKey: "list") as? [String] {
            list = test
        }else{
            list = []
        }
        
        if let tes = userDefault.array(forKey: "listMark") as? [Int] {
            listMark = tes
        }else{
            listMark = []
        }
    }
    
    
    func taskSave() {
        userDefault.set(list, forKey: "list")
        userDefault.set(listMark, forKey: "listMark")
    }
    
    func taskLoad(){
        list = (userDefault.array(forKey: "list") as? [String])
        listMark = (userDefault.array(forKey: "listMark") as? [Int])
    }
    
}
