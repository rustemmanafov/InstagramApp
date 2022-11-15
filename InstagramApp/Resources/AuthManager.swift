//
//  AuthManager.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 15.11.22.
//

import FirebaseAuth

public class AuthManager {
    static let shared = AuthManager()
    
    public func registerNewUSer(username: String, email: String, password: String) {
        
    }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                
                completion(true)
            }
        } else if let username = username {
            print(username)
        }
    }
    
    
    
}
