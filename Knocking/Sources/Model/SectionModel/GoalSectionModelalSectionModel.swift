//
//  GoalSectionModel.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/12.
//
import UIKit
import RxDataSources

struct GoalSectionModel {
    var items: [Goal]
    
    init(items: [Goal]) {
        self.items = items
    }
}

