//
//  BookCell.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/29/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    var book: Book? {
        didSet {
            bookTitleLabel.text = book?.titleOfBook
            bookAuthorLabel.text = book?.authorOfBook
            
            guard let coverImageUrl = book?.coverImageUrl else { return }
            guard let url = URL(string: coverImageUrl) else { return }
            
            bookCoverImage.image = nil
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                if let err = error {
                    print("Failed to fetch our book cover image: ", err)
                }
                
                guard let imageData = data else { return }
                guard let image = UIImage(data: imageData) else { return }
                
                DispatchQueue.main.async {
                    self.bookCoverImage.image = image
                }
                
            } .resume()
        }
    }
    
    private let bookCoverImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = #imageLiteral(resourceName: "steve_jobs")
        
        imageView.backgroundColor = .lightGray
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let bookTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title of the book"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bookAuthorLabel: UILabel = {
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
        backgroundColor = .clear
        
        [bookCoverImage, bookTitleLabel, bookAuthorLabel].forEach { addSubview($0) }
        
        bookCoverImage.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        bookCoverImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        bookCoverImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        bookCoverImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        bookTitleLabel.leftAnchor.constraint(equalTo: bookCoverImage.rightAnchor, constant: 8).isActive = true
        bookTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        bookTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -12.5).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        bookAuthorLabel.topAnchor.constraint(equalTo: bookTitleLabel.bottomAnchor, constant: 0).isActive = true
        bookAuthorLabel.leftAnchor.constraint(equalTo: bookCoverImage.rightAnchor, constant: 8).isActive = true
        bookAuthorLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        bookAuthorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
