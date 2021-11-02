//
//  TabBarController.swift
//  Thoughts
//
//  Created by Alex on 11/2/21.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers() {
        let homeViewController = HomeViewController()
        homeViewController.title = "Home"
        homeViewController.navigationItem.largeTitleDisplayMode = .always
        let profileViewController = ProfileViewController()
        profileViewController.title = "Profile"
        profileViewController.navigationItem.largeTitleDisplayMode = .always
        
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        homeNavigationController.navigationBar.prefersLargeTitles = true
        profileNavigationController.navigationBar.prefersLargeTitles = true
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        setViewControllers([homeNavigationController, profileNavigationController], animated: false)
    }

}
