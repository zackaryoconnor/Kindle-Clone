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
    let pages: [Page]
    let coverImageUrl: String
    
    init(dictionary: [String : Any]) {
        self.titleOfBook = dictionary["title"] as? String ?? ""
        self.authorOfBook = dictionary["author"] as? String ?? ""
        self.coverImageUrl = dictionary["coverImageUrl"] as? String ?? ""
        
        var bookPages = [Page]()
        
        if let pagesDictionaries = dictionary["pages"] as? [[String : Any]] {
            for pageDictionary in pagesDictionaries {
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page)
                }
            }
        }
        pages = bookPages
    }
    
    
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
