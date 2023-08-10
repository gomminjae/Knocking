//
//  GoalCell.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/11.
//
import UIKit

class GoalCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemIndigo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
