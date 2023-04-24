//
//  UIApplication.swift
//  MyMusicApp
//
//  Created by apple on 10/03/23.
//

//import UIKit
//
//extension UIApplication {
//    
//    var statusBarView: UIView? {
//        return value(forKey: "statusBar") as? UIView
//    }
//
//    
//    class func topViewController(controller: UIViewController? = UIWindow.key?.rootViewController) -> UIViewController? {
//        if let navigationController = controller as? UINavigationController {
//            return topViewController(controller: navigationController.visibleViewController)
//        }
//        if let tabController = controller as? UITabBarController {
//            if let selected = tabController.selectedViewController {
//                return topViewController(controller: selected)
//            }
//        }
//        if let presented = controller?.presentedViewController {
//            return topViewController(controller: presented)
//        }
//        return controller
//    }
//}
//
//extension UIViewController {
//    
//    @IBAction func clickedOnBack(_ sender: Any) {
//        self.navigationController?.popViewController(animated: true)
//    }
//}
