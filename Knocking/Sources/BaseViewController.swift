//
//  BaseViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/19.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configLauout()
        bindRX()
        
        // Do any additional setup after loading the view.
    }
    
    
    func configView() {}
    func configLauout() {}
    func bindRX() {}

}
