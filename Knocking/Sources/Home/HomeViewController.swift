//
//  HomeViewController.swift
//  Knocking
//
//  Created by 권민재 on 2023/05/19.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

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
        imageView.image = UIImage(systemName: "person.fill")
        //imageView.tintColor = .black
        imageView.backgroundColor = .black
        imageView.layer.cornerRadius = 20
        
        
        let leftBarButtonItem = UIBarButtonItem(customView: navView)
        let imageItem = UIBarButtonItem(customView: imageView)
        //self.navigationItem.leftBarButtonItem = leftBarButtonItem
        self.navigationItem.leftBarButtonItems = [imageItem,leftBarButtonItem]
        
    }
    
    override func configView() {
        view.addSubview(collectionView)
        //collectionView.backgroundColor = .red
    }
    override func configLauout() {
        
        collectionView.collectionViewLayout = generateLayout()
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalTo(view)
            $0.trailing.equalTo(view)
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    override func bindRX() {
        
    }
    
    
    
    //MARK: UI
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return view
    }()

    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Minjae!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        label.bold(targetString: "Minjae")
        label.sizeToFit()
        return label
    }()
    
    


}

extension HomeViewController {
    
    private func firstLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize) // Whithout badge
        item.contentInsets = .init(top: 15, leading: 0, bottom: 15, trailing: 0)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension:.fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 2)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }
    
    private func secondLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.50),heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 0, leading: 0, bottom: 15, trailing: 15)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),heightDimension: .estimated(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 0, leading: 0, bottom: 15, trailing: 0)
        section.contentInsets.leading = 15
        section.orthogonalScrollingBehavior = .continuous
//        section.boundarySupplementaryItems = [
//            NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension:.fractionalWidth(1), heightDimension: .estimated(44)), elementKind: , alignment:.topLeading)]
        return section
    }
    
    
    
    
    func generateLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            
            switch sectionNumber {
            case 0: return self.firstLayoutSection()
            default: return self.secondLayoutSection()
            }
        }
    }
}
