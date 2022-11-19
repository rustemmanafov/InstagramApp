//
//  ProfileViewController.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 09.11.22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureNavBar()
        
    }
    
    private func configureNavBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTabSettingsButton))
    }
    
    @objc private func didTabSettingsButton() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


