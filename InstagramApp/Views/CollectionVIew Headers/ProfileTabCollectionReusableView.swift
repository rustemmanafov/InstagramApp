//
//  ProfileTabCollectionReusableView.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 24.11.22.
//

import UIKit

protocol ProfileTabCollectionReusableViewDelegate: AnyObject {
     func didTapGridButtonTab()
     func didTapTaggedButtonTab()
}

class ProfileTabCollectionReusableView: UICollectionReusableView {
        
    static let identifier = "ProfileTabCollectionReusableView"
    
    public weak var delegate: ProfileTabCollectionReusableViewDelegate?
    
    struct Constants {
        static let padding: CGFloat = 8
    }
    
    private let gridButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.tintColor = .systemBlue
        button.setBackgroundImage(UIImage(systemName: "square.grid.2x2"), for: .normal)
        return button
    }()
    
    private let taggedButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.tintColor = .lightGray
        button.setBackgroundImage(UIImage(systemName: "tag"), for: .normal)
        return button
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(taggedButton)
        addSubview(gridButton)
        
        gridButton.addTarget(self, action: #selector(didTapGridButton), for: .touchUpInside)
        taggedButton.addTarget(self, action: #selector(didTapTaggedButton), for: .touchUpInside)
    }
    
    @objc private func didTapGridButton() {
        delegate?.didTapGridButtonTab()
        
        gridButton.tintColor = .systemBlue
        taggedButton.tintColor = .lightGray
    }
    
    @objc private func didTapTaggedButton() {
        delegate?.didTapTaggedButtonTab()
        
        gridButton.tintColor = .lightGray
        taggedButton.tintColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = height-(Constants.padding * 2)
        let gridButtonX = ((width/2)-size)/2
        gridButton.frame = CGRect(x: gridButtonX, y: Constants.padding, width: size, height: size)

        taggedButton.frame = CGRect(x: gridButtonX + (width/2), y: Constants.padding, width: size, height: size)
    }
}
