//
//  GoalHeader.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/10.
//

import UIKit
import SnapKit


class GoalHeaderView: UICollectionReusableView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
    }
    
    
    //MARK: UI
    lazy var baseView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var goalLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    
    
}
