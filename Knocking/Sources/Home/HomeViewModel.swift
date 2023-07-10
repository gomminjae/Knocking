//
//  HomeViewModel.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/19.
//

import Foundation
import RxSwift


protocol HomeViewModelBindable {
    associatedtype Input
    associatedtype Output
    
    var disposeBag: DisposeBag { get set }
}

class HomeViewModel {
    private let disposeBag = DisposeBag()
}
