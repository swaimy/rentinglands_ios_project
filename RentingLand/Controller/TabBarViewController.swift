//
//  TabBarViewController.swift
//  RentingLand
//
//  Created by Mamta on 21/04/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    @IBOutlet weak var tabBarOutlets: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        tabBar.clipsToBounds = true
        tabBar.layer.cornerRadius = 10
        tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
  

}
