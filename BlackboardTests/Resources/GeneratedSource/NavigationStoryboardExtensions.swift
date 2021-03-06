//
//  NavigationStoryboardExtensions.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let sharedStoryboardInstance = UIStoryboard(name: "Navigation", bundle: nil)

private class InitializeBlockObject {
    
    let block: ((UIViewController) -> Void)
    
    init(block: @escaping ((UIViewController) -> Void)) {
        self.block = block
    }
    
}

extension MenuViewController {
    
    final class func instantiateViewControllerFromStoryboard(_ initialize: ((_ menuViewController: MenuViewController) -> Void)? = nil) -> MenuViewController {
        let viewController = sharedStoryboardInstance.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        initialize?(viewController)
        return viewController
    }
    
    final class func instantiateNavigationControllerFromStoryboard(_ initialize: ((_ menuViewController: MenuViewController) -> Void)? = nil) -> UINavigationController {
        let navigationController = sharedStoryboardInstance.instantiateViewController(withIdentifier: "MenuNavigationController") as! UINavigationController
        let viewController = navigationController.viewControllers.first as! MenuViewController
        initialize?(viewController)
        return navigationController
    }
    
    // Segues
    
    func handleSegue(_ segue: UIStoryboardSegue, sender: Any?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destination)
        }
    }
    
}

extension WelcomeViewController {
    
    final class func instantiateViewControllerFromStoryboard(_ initialize: ((_ welcomeViewController: WelcomeViewController) -> Void)? = nil) -> WelcomeViewController {
        let viewController = sharedStoryboardInstance.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        initialize?(viewController)
        return viewController
    }
    
    final class func instantiateNavigationControllerFromStoryboard(_ initialize: ((_ welcomeViewController: WelcomeViewController) -> Void)? = nil) -> UINavigationController {
        let navigationController = sharedStoryboardInstance.instantiateViewController(withIdentifier: "WelcomeNavigationController") as! UINavigationController
        let viewController = navigationController.viewControllers.first as! WelcomeViewController
        initialize?(viewController)
        return navigationController
    }
    
    // Segues
    
    enum SegueIdentifier: String {
        case showMenu = "ShowMenu"
    }
    
    func handleSegue(_ segue: UIStoryboardSegue, sender: Any?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destination)
        }
    }
    
    final func performShowMenuSegue(_ initialize: @escaping ((MenuViewController) -> Void) = {_ in}) {
        let initializeBlock = InitializeBlockObject() {
            let navigationController = $0 as! UINavigationController
            let viewController = navigationController.viewControllers.first as! MenuViewController
            initialize(viewController)
        }
        performSegue(withIdentifier: SegueIdentifier.showMenu.rawValue, sender: initializeBlock)
    }
    
}
