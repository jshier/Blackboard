//
//  CollectionStoryboardExtensions.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let sharedStoryboardInstance = UIStoryboard(name: "Collection", bundle: nil)

private class InitializeBlockObject {
    
    let block: ((UIViewController) -> Void)
    
    init(block: @escaping ((UIViewController) -> Void)) {
        self.block = block
    }
    
}

extension CollectionViewController {
    
    // Segues
    
    func handleSegue(_ segue: UIStoryboardSegue, sender: Any?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destination)
        }
    }
    
    // Collection View Cells
    
    enum CollectionViewCellIdentifier: String {
        case blue = "Blue"
        case green = "Green"
        case red = "Red"
    }
    
    final func dequeueBlueCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ blueCell: BlueCollectionViewCell) -> Void)? = nil) -> BlueCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.blue.rawValue, for: indexPath) as! BlueCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueGreenCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ greenCell: GreenCollectionViewCell) -> Void)? = nil) -> GreenCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.green.rawValue, for: indexPath) as! GreenCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueRedCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ redCell: RedCollectionViewCell) -> Void)? = nil) -> RedCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.red.rawValue, for: indexPath) as! RedCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
}

extension ViewController {
    
    // Segues
    
    func handleSegue(_ segue: UIStoryboardSegue, sender: Any?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destination)
        }
    }
    
    // Collection View Cells
    
    enum CollectionViewCellIdentifier: String {
        case blue = "blue cell"
        case green = "green cell"
        case red = "red cell"
    }
    
    final func dequeueBlueCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ blueCell: BlueCollectionViewCell) -> Void)? = nil) -> BlueCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.blue.rawValue, for: indexPath) as! BlueCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueGreenCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ greenCell: GreenCollectionViewCell) -> Void)? = nil) -> GreenCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.green.rawValue, for: indexPath) as! GreenCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
    final func dequeueRedCell(from collectionView: UICollectionView, for indexPath: IndexPath, initialize: ((_ redCell: RedCollectionViewCell) -> Void)? = nil) -> RedCollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifier.red.rawValue, for: indexPath) as! RedCollectionViewCell
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
}
