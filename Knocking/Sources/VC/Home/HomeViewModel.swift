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
    
    var input: Input { get }
    var output: Output { get }
}

class HomeViewModel: ViewModelType {
    private let disposeBag = DisposeBag()
    
    struct Input {
        
    }
    
    struct Output {
    
    }
    
    var input: Input
    var output: Output
    
    init(input: Input, output: Output) {
        self.input = input
        self.output = output
    }
    
    
    
}
