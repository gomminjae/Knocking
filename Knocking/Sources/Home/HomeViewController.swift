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
import RxDataSources

enum HomeSection {
    case knocking
    case home
    case calendar
    case statistic
}



class HomeViewController: BaseViewController {
    
    
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

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
        setupNavBar()
    }
    override func configLauout() {
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalTo(view)
            $0.trailing.equalTo(view)
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        generateLayout()
        
    }
    
    
    override func bindRX() {
        
        let goalDataSource = RxCollectionViewSectionedReloadDataSource<SectionModel<String,Goal>>(configureCell: { dataSource, collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GoalCell.reusableIdentifirer, for: indexPath) as? GoalCell else { return UICollectionViewCell() }

            return cell
        })

        let todoDataSource = RxCollectionViewSectionedReloadDataSource<SectionModel<String,Todo>>(configureCell: { dataSource, collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TodoCell.reusableIdentifirer, for: indexPath) as? TodoCell else { return UICollectionViewCell() }

            return cell
        })
        
        Observable.just([SectionModel(model: "Goals", items: [Goal]())])
            .bind(to: collectionView.rx.items(dataSource: goalDataSource))
            .disposed(by: disposeBag)
        
        Observable.just([SectionModel(model: "Todos", items: [Todo]())])
            .bind(to: collectionView.rx.items(dataSource: todoDataSource))
            .disposed(by: disposeBag)
        
    }
    
    
    //MARK: UI
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(GoalCell.self, forCellWithReuseIdentifier: GoalCell.reusableIdentifirer)
        view.register(TodoCell.self, forCellWithReuseIdentifier: TodoCell.reusableIdentifirer)
        return view
    }()

    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Minjae!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        label.bold(targetString: "Minjae")
        label.sizeToFit()
        return label
    }()

}


//MARK: Compositional layout
extension HomeViewController {
    
    private func firstLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize) // Whithout badge
        item.contentInsets = .init(top: 15, leading: 0, bottom: 15, trailing: 0)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension:.fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 15)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .none
        return section
    }
    
    private func secondLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.50),heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 0, leading: 15, bottom: 15, trailing: 15)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),heightDimension: .estimated(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 15)
        
        
        let section = NSCollectionLayoutSection(group: group)
        //section.contentInsets = .init(top: 0, leading: 0, bottom: 15, trailing: 0)
        //section.contentInsets.leading = 15
        section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary

        return section
    }
    
    func generateLayout() {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            
            switch sectionNumber {
            case 0: return self.firstLayoutSection()
            default: return self.secondLayoutSection()
            }
        }
        collectionView.setCollectionViewLayout(layout, animated: true)
        
    }
}
//MARK: DataSource
//extension HomeViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return 1
//        default:
//            return 6
//        }
//    }
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        switch indexPath.section {
//        case 0:
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GoalCell.reusableIdentifirer, for: indexPath) as? GoalCell else { return UICollectionViewCell() }
//
//            return cell
//
//        default:
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TodoCell.reusableIdentifirer, for: indexPath) as? TodoCell else { return UICollectionViewCell() }
//            return cell
//
//        }
//    }
//}
