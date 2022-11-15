//
//  ViewController.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 08.11.22.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        do {
        //          try Auth.auth().signOut()
        //        } catch {
        //            print("failed to sign out")
        //        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthendicated()
    }
    
    private func handleNotAuthendicated() {
        if Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
}

