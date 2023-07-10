//
//  HomeViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/19.
//

import UIKit
import RxSwift
import SnapKit
import RxCocoa
import Then

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        
    }
    
    override func configView() {
        
    }
    override func configLauout() {
        
    }
    override func bindRX() {
        
    }
    
    
    
    //MARK: UI
    

    
    let titleLabel = UILabel().then {
        $0.text = "Hello World!"
    }
    
//    let collectionView = UICollectionView().then {
//        $0.collectionViewLayout = UICollectionViewLayout()
//    }
//


}
