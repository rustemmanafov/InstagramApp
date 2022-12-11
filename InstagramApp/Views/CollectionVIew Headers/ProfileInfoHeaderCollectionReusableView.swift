//
//  ProfileInfoHeaderCollectionReusableView.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 24.11.22.
//

import UIKit

protocol ProfileInfoHeaderCollectionReusableViewDelegate: AnyObject {
    func profileHeaderDidTapPostButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapFollowersButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapFollowingButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapEditProfileButton(_ header: ProfileInfoHeaderCollectionReusableView)
}

final class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
        
    static let identifier = "ProfileInfoHeaderCollectionReusableView"
    
    public weak var delegate: ProfileInfoHeaderCollectionReusableViewDelegate?
    
    private let profilePhotoImageVIew: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let postButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .secondarySystemBackground
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Posts", for: .normal)
        return button
    }()
    
    private let followingButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .secondarySystemBackground
        button.setTitleColor(.label, for: .normal)

        button.setTitle("Following", for: .normal)

        return button
    }()
    
    private let followersButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .secondarySystemBackground
        button.setTitleColor(.label, for: .normal)

        button.setTitle("Followers", for: .normal)

        return button
    }()
    
    private let editProfileButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .secondarySystemBackground
        button.setTitleColor(.label, for: .normal)

        button.setTitle("Edit Your Profile", for: .normal)

        return button
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.textColor = .label
        label.text = "Rustam Manafli"
        label.numberOfLines = 1
        return label
    }()
    
    private let bioLabel: UILabel = {
       let label = UILabel()
        label.textColor = .label
        label.text = "This is first account!"
        label.numberOfLines = 0
        return label
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        addButtonActions()
        backgroundColor = .systemBackground
        clipsToBounds = true
    }
    
    private func addSubview() {
        addSubview(profilePhotoImageVIew)
        addSubview(followersButton)
        addSubview(followingButton)
        addSubview(postButton)
        addSubview(bioLabel)
        addSubview(nameLabel)
        addSubview(editProfileButton)
    }
    
    private func addButtonActions() {
        followersButton.addTarget(self, action: #selector(didTapFollowersButton), for: .touchUpInside)
        followingButton.addTarget(self, action: #selector(didTapFollowingButton), for: .touchUpInside)
        editProfileButton.addTarget(self, action: #selector(didTapEditProfileButton), for: .touchUpInside)
        postButton.addTarget(self, action: #selector(didTapPostButton), for: .touchUpInside)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let profilePhotoSize = width/4
        profilePhotoImageVIew.frame = CGRect(x: 5,
                                             y: 5,
                                             width: profilePhotoSize,
                                             height: profilePhotoSize).integral
        
        profilePhotoImageVIew.layer.cornerRadius = profilePhotoSize/2.0
        
        let buttonHeight = profilePhotoSize/2
        let countButtonWidth = (width-10-profilePhotoSize)/3
        
        postButton.frame = CGRect(x: profilePhotoImageVIew.right,
                                  y: 5,
                                  width: countButtonWidth,
                                  height: buttonHeight).integral
        
        followersButton.frame = CGRect(x: postButton.right,
                                       y: 5,
                                       width: countButtonWidth,
                                       height: buttonHeight).integral
        
        followingButton.frame = CGRect(x: followersButton.right,
                                       y: 5,
                                       width: countButtonWidth,
                                       height: buttonHeight).integral
        
        editProfileButton.frame = CGRect(x: profilePhotoImageVIew.right,
                                         y: 5 + buttonHeight,
                                         width: countButtonWidth*3,
                                         height: buttonHeight).integral

        nameLabel.frame = CGRect(x: 5,
                                 y: 5 + profilePhotoImageVIew.bottom,
                                 width: width - 10,
                                 height: 50).integral
        
        let bioLabelSize = bioLabel.sizeThatFits(frame.size)
        bioLabel.frame = CGRect(x: 5,
                                y: 5 + nameLabel.bottom,
                                width: width - 10,
                                height: bioLabelSize.height).integral
    }
    
    @objc func didTapFollowersButton() {
        delegate?.profileHeaderDidTapFollowersButton(self)
    }
    
    @objc func didTapFollowingButton() {
        delegate?.profileHeaderDidTapFollowingButton(self)
    }
    
    @objc func didTapEditProfileButton() {
        delegate?.profileHeaderDidTapEditProfileButton(self)

    }
    
    @objc func didTapPostButton() {
        delegate?.profileHeaderDidTapPostButton(self)

    }
}
