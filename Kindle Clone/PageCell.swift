//
//  PageCell.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/30/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Pharetra magna ac placerat vestibulum lectus mauris ultrices. Enim facilisis gravida neque convallis a cras semper. Tellus mauris a diam maecenas sed enim. Facilisis magna etiam tempor orci eu lobortis. Sit amet volutpat consequat mauris nunc congue nisi. Aliquet bibendum enim facilisis gravida neque convallis a cras. Ut diam quam nulla porttitor. Faucibus interdum posuere lorem ipsum dolor. Sit amet facilisis magna etiam tempor orci. Convallis convallis tellus id interdum velit laoreet. Posuere morbi leo urna molestie at elementum eu facilisis sed."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textLabel)
        
        textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        textLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        textLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
