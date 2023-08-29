//
//  UserSettingViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/29.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class UserSettingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    

    override func configView() {
        
    }
    override func configLauout() {
    }
    
    override func bindRX() {
        
    }
    
    //MARK: UI
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    lazy var dreamLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        return tf
    }()
    
    
    lazy var dreamTextField: UITextField = {
        let tf = UITextField()
        return tf
    }()
    

}
