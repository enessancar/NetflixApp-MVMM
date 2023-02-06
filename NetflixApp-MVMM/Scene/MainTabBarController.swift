//
//  ViewController.swift
//  NetflixApp-MVMM
//
//  Created by Enes Sancar on 6.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        createTabBar()
    }
    
    func createTabBar() {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: HomeViewController())
        
        guard let items = self.tabBar.items else { return }
        let images = ["house", "play.circle", "magnifyingglass", "arrow.down.circle"]
        
        for x in 0...(images.count) {
            items[x].image = UIImage(systemName: images[x])
        }
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
}

