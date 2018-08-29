//
//  BookCell.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/29/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let bookCoverImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .lightGray
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let bookTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title of the book"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bookAuthorLabel: UILabel = {
        let label = UILabel()
        label.text = "Author of the book"
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupCell()
    }
    
    func setupCell() {
        
        [bookCoverImage, bookTitleLabel, bookAuthorLabel].forEach { addSubview($0) }
        
        bookCoverImage.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        bookCoverImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        bookCoverImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        bookCoverImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        bookTitleLabel.leftAnchor.constraint(equalTo: bookCoverImage.rightAnchor, constant: 8).isActive = true
        bookTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        bookTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -15).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        bookAuthorLabel.topAnchor.constraint(equalTo: bookTitleLabel.bottomAnchor, constant: 0).isActive = true
        bookAuthorLabel.leftAnchor.constraint(equalTo: bookCoverImage.rightAnchor, constant: 8).isActive = true
        bookAuthorLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        bookAuthorLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
