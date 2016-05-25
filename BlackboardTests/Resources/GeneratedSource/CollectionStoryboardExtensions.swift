//
//  CollectionStoryboardExtensions.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let sharedStoryboardInstance = UIStoryboard(name: "Collection", bundle: nil)

private class InitializeBlockObject {
    
    let block: (UIViewController -> Void)
    
    init(block: (UIViewController -> Void)) {
        self.block = block
    }
    
}

extension CollectionViewController {
    
    // Segues
    
    func handleSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destinationViewController)
        }
    }
    
    // Collection View Cells
    
    enum CollectionViewCellIdentifier: String {
        case Blue = "Blue"
        case Green = "Green"
        case Red = "Red"
    }
    
    final func dequeueBlueCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((blueCell: BlueCollectionViewCell) -> Void) = {_ in}) -> BlueCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Blue.rawValue, forIndexPath: indexPath) as! BlueCollectionViewCell
        initialize(blueCell: collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueGreenCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((greenCell: GreenCollectionViewCell) -> Void) = {_ in}) -> GreenCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Green.rawValue, forIndexPath: indexPath) as! GreenCollectionViewCell
        initialize(greenCell: collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueRedCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((redCell: RedCollectionViewCell) -> Void) = {_ in}) -> RedCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Red.rawValue, forIndexPath: indexPath) as! RedCollectionViewCell
        initialize(redCell: collectionViewCell)
        return collectionViewCell
    }
    
}

extension ViewController {
    
    // Segues
    
    func handleSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destinationViewController)
        }
    }
    
    // Collection View Cells
    
    enum CollectionViewCellIdentifier: String {
        case Blue = "blue cell"
        case Green = "green cell"
        case Red = "red cell"
    }
    
    final func dequeueBlueCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((blueCell: BlueCollectionViewCell) -> Void) = {_ in}) -> BlueCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Blue.rawValue, forIndexPath: indexPath) as! BlueCollectionViewCell
        initialize(blueCell: collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueGreenCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((greenCell: GreenCollectionViewCell) -> Void) = {_ in}) -> GreenCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Green.rawValue, forIndexPath: indexPath) as! GreenCollectionViewCell
        initialize(greenCell: collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueRedCellFrom(collectionView: UICollectionView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((redCell: RedCollectionViewCell) -> Void) = {_ in}) -> RedCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellIdentifier.Red.rawValue, forIndexPath: indexPath) as! RedCollectionViewCell
        initialize(redCell: collectionViewCell)
        return collectionViewCell
    }
    
}