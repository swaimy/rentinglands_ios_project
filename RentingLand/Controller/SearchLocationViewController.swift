//
//  SearchLocationViewController.swift
//  RentingLand
//
//  Created by Mamta on 24/04/23.
//

import UIKit

class SearchLocationViewController: UIViewController {

    @IBOutlet weak var searchLocationView: UIView!
   
    @IBOutlet weak var locationSearchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        searchLocationView.layer.borderWidth = 0.5
        searchLocationView?.layer.borderColor = UIColor.lightGray.cgColor
        searchLocationView.layer.cornerRadius = 15
        searchLocationView.layer.shadowOffset = .zero
        searchLocationView.layer.shadowOpacity = 1
        searchLocationView.layer.masksToBounds =  false
        searchLocationView.layer.cornerRadius = 15
        locationSearchBar.searchTextField.backgroundColor = .white
        locationSearchBar.searchTextField.leftView?.tintColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0)
        
        
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
