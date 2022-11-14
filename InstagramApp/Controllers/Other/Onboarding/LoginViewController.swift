//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 14.11.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let usernameEmailTextField: UITextField = {
        
        return UITextField()
    }()
    
    private let passwordTextField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton: UIButton = {
       let button = UIButton()
        
        
        return button
    }()
    
    private let termsButton: UIButton = {
       let button = UIButton()
        
        
        return button
    }()
    
    private let privacyButton: UIButton = {
       let button = UIButton()
        
        
        return button
    }()
    
    private let createAccountButton: UIButton = {
       let button = UIButton()
        
        
        return button
    }()
    
    private let headerView: UIView = {
                
        return UIView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        addSubview()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
   private func addSubview() {
       view.addSubview(usernameEmailTextField)
       view.addSubview(passwordTextField)
       view.addSubview(loginButton)
       view.addSubview(termsButton)
       view.addSubview(privacyButton)
       view.addSubview(headerView)
       view.addSubview(createAccountButton)
    }

    @objc private func didTapLoginButton() {
        
    }
    
    @objc private func didTapTermsButton() {
        
    }
    
    @objc private func didTapPrivacyButton() {
        
    }
    
    @objc private func didTapCreateAccountButton() {
        
    }

}
