//
//  HomeViewModel.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/19.
//

import Foundation
import RxSwift
import RxFlow
import RxCocoa


protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    var disposeBag: DisposeBag { get set }
}

class HomeViewModel {
    private let disposeBag = DisposeBag()
    
}
