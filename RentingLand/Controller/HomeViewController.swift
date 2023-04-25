//
//  HomeViewController.swift
//  RentingLand
//
//  Created by Mamta on 20/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var searchView: UIView!
@IBOutlet var slideMenuTableView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.layer.cornerRadius = 10
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(UINib(nibName: "ExploreLandTableViewCell", bundle: nil), forCellReuseIdentifier: "ExploreLandTableViewCell")
        homeTableView.register(UINib(nibName: "LandForRentTableViewCell", bundle: nil), forCellReuseIdentifier: "LandForRentTableViewCell")
        homeTableView.register(UINib(nibName: "CostomHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CostomHeaderView")
        
        searchBar.searchTextField.backgroundColor = .white
        searchBar.searchTextField.leftView?.tintColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0)
        searchView.layer.borderWidth = 0.5
        searchView?.layer.borderColor = UIColor.lightGray.cgColor
         searchView.layer.cornerRadius = 15
        searchView.layer.shadowOffset = .zero
         searchView.layer.shadowOpacity = 1
         searchView.layer.masksToBounds =  false
          searchView.layer.cornerRadius = 15
        
        
         }
    
     }


extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CostomHeaderView") as! CostomHeaderView
                headerView.headerLbl.text = "Explore lands with category"
                headerView.viewAllBtn.isHidden = true
            return headerView

        }
         
    else if section == 1{
     let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CostomHeaderView") as! CostomHeaderView
         headerView.headerLbl.text = "Lands for Rent"
       //headerView.viewAllBtn.addTarget(self, action: #selector(HomeViewController.oneTapped(_:)), for: .touchUpInside)
        return headerView

         }
       else if section == 2{
           let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CostomHeaderView") as! CostomHeaderView
            headerView.headerLbl.text = "Recommended Lands"
           return headerView
      
         }
        else{
            return nil
        }
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 130
        }
       else if indexPath.section == 1{
            return 310
        }
        else if indexPath.section == 2{
             return 310
         }
        else{
            return 0.1
        }
    }
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
           return 1
        }
        if section == 1{
         return   1
        }
        if section == 2{
          return  1
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "ExploreLandTableViewCell", for: indexPath)as! ExploreLandTableViewCell
            return cell1
        }
        
        else{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "LandForRentTableViewCell", for: indexPath)as! LandForRentTableViewCell
            return cell2
        }
    }
    
}
