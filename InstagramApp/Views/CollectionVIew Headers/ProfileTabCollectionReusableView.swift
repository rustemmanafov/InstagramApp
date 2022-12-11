//
//  ProfileTabCollectionReusableView.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 24.11.22.
//

import UIKit

class ProfileTabCollectionReusableView: UICollectionReusableView {
        
    static let identifier = "ProfileTabCollectionReusableView"
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
