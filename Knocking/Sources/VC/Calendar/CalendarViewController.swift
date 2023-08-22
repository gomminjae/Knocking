//
//  CalendarViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/20.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit
import FSCalendar

class CalendarViewController: BaseViewController {
    
    let calendar = FSCalendar()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func configView() {
        
    }
    override func configLauout() {
        
    }
    override func bindRX() {
        
    }
    
    
    
    //MARK: UI
    let collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return view
    }()
    
    

   
}
