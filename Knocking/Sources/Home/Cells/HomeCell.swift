//
//  HomeCell.swift
//  Knocking
//
//  Created by 권민재 on 2023/07/07.

import UIKit
import SnapKit
import Then


class HomeCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureCell() {
        
    }
    
    
    
    let titleLabel = UILabel().then {
        $0.text = "Title"
    }
    
    let subTitleLabel = UILabel().then {
        $0.text = "Subtitle"
    }
}
