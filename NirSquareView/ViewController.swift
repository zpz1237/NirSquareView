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
    
    var numberOfItems = 12
    var numberOfLines = 3
    
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
        cell.imageView.layer.cornerRadius = cell.imageView.frame.width/2
        print(cell.imageView.frame.width/2)
        cell.imageView.clipsToBounds = true
        
        //根据indexPath配置图片和文字
//        cell.imageView.image =
//        cell.cellLabel.text =
        
        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfItems
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionView.frame.width/CGFloat(numberOfItems/numberOfLines), collectionView.frame.height*0.5)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.item)")
    }

}

