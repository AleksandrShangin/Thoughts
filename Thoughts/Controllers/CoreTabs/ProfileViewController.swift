//
//  ProfileViewController.swift
//  Thoughts
//
//  Created by Alex on 11/2/21.
//

import UIKit

final class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(didTapSignOut))
    }

    @objc private func didTapSignOut() {
        
    }
}
