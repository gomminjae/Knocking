//
//  OnboardingViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/07/30.
//

import UIKit
import RxSwift
import RxCocoa
import RxFlow
import SnapKit

class OnboardingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func configView() {
        
    }
    
    override func configLauout() {
        
    }
    
    //MARK: UI
    let baseView: UIView = {
        let view = UIView()
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    

}
