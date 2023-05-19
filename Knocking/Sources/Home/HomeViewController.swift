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

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func configView() {
        
    }
    override func configLauout() {
        
    }
    override func bindRX() {
        
    }
    
    
    
    //MARK: UI
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return view
    }()
    
    


}
