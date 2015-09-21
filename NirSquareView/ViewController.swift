//
//  ViewController.swift
//  NirSquareView
//
//  Created by Nirvana on 9/21/15.
//  Copyright © 2015 NSNirvana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.layer.cornerRadius = 22
        cell.imageView.clipsToBounds = true
        print(cell.imageView.frame)
        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let totalHeight = self.collectionView.frame.height
        return CGSizeMake(totalHeight*0.4396, totalHeight*0.5)
    }

}

