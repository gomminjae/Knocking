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
import Then

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavBar()

        
    }
    
    private func setupNavBar() {
        let navView =  UIView(frame: CGRect(x: 0, y: 0, width: titleLabel.bounds.width, height: 44))
        navView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.centerY.equalTo(navView)
        }
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.image = UIImage(named: "person.fill")
        imageView.tintColor = .black
        imageView.backgroundColor = .black
        
        
        let leftBarButtonItem = UIBarButtonItem(customView: navView)
        let imageItem = UIBarButtonItem(customView: imageView)
        //self.navigationItem.leftBarButtonItem = leftBarButtonItem
        self.navigationItem.leftBarButtonItems = [imageItem,leftBarButtonItem]
    }
    
    override func configView() {
        
    }
    override func configLauout() {
        
    }
    override func bindRX() {
        
    }
    
    
    
    //MARK: UI

    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Minjae!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.sizeToFit()
        return label
    }()
    
    


}

extension HomeViewController {
    func generateLayout() {}
}
