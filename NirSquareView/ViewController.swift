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
    
    var numberOfItems = 6
    
    //这个数你需要在StroyBoard里面改过了才能动
    let ratioOfWidthAndHeght = 2.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.layer.cornerRadius = 22.5
        cell.imageView.clipsToBounds = true
        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfItems
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let totalHeight = self.collectionView.frame.height
        return CGSizeMake(totalHeight*(CGFloat(ratioOfWidthAndHeght/Double(numberOfItems/2)-0.004)), totalHeight*0.5)
//        return CGSizeMake(totalHeight*0.4396, totalHeight*0.5)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.item)")
    }

}

