//
//  BookPagerController.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/30/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookPagerController: UICollectionViewController {

    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        self.collectionView!.register(PageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        navigationItem.title = book?.titleOfBook
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(handleBackButtonPressed))
        
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        collectionView?.isPagingEnabled = true
    }
    
    @objc func handleBackButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
}


extension BookPagerController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book?.pages.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PageCell {
            
            let page = book?.pages[indexPath.row]
            cell.textLabel.text = page?.text
            
            return cell
        }
        return UICollectionViewCell()
    }
}


extension BookPagerController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height - 44 - 20)
    }
}














