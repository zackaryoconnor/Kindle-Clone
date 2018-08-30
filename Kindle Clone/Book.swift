//
//  Data.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/30/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

struct Book {
    let titleOfBook: String
    let authorOfBook: String
//    let pages: []
    let coverOfBook: UIImageView
    
    init(titleOfBook: String, authorOfBook: String, coverOfBook: UIImageView) {
        self.titleOfBook = titleOfBook
        self.authorOfBook = authorOfBook
        self.coverOfBook = coverOfBook
    }
}
