//
//  HomeViewController.swift
//  NetflixApp-MVMM
//
//  Created by Enes Sancar on 6.02.2023.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    //MARK: - Properties
    private var tableView = UITableView()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    private func setupUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        
        let headerView = MainHeroHeaderView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight * 0.35))
        tableView.tableHeaderView = headerView
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.right.left.bottom.top.equalToSuperview()
        }
    }
}

//MARK: - TableView Delegate/DataSource

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
