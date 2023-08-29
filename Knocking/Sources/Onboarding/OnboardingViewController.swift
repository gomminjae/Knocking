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
        view.backgroundColor = .black

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func configView() {
        view.addSubview(titleLabel)
        view.addSubview(knockingButton)
        
    }
    
    override func configLauout() {
        titleLabel.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.centerY.equalTo(view)
        }
        knockingButton.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20)
            $0.centerX.equalTo(titleLabel)
            $0.width.equalTo(180)
            $0.height.equalTo(70)
        }
    }
    
    
    //MARK: UI
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "당신의 꿈에 노크하세요"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var knockingButton: UIButton = {
        let button = UIButton()
        button.setTitle("노크하기", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        return button
    }()
    
    @objc func tapped() {
        let vc = UserSettingViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)
    }
    

    

}
