//
//  TodoCell.swift
//  Knocking
//
//  Created by 권민재 on 2023/08/11.
//

import UIKit


class TodoCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
