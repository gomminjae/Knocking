//
//  ReusableIdentifirer.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/10.
//

import UIKit


extension NSObject {
    
    static var reusableIdentifirer: String {
        return String(describing: self)
    }
}
