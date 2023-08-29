//
//  UserInfo.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/25.
//

import Foundation
import RxSwift
import RxCocoa


class UserInfoManager {
    static let shared = UserInfoManager()
    
    private let disposeBag = DisposeBag()
    private let key = "UserInfo"
    
    init() {
        
    }
    
    
    func isUserInfo() -> Bool {
            if let userInfo = UserDefaults.standard.data(forKey: key), let _ = try? JSONDecoder().decode(User.self, from: userInfo) {
                return true
            } else {
                return false
            }
        }
    
    
}
