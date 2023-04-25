//
//  SearchLocationViewController.swift
//  RentingLand
//
//  Created by Mamta on 24/04/23.
//

import UIKit

class SearchLocationViewController: UIViewController {

    @IBOutlet weak var searchLocationView: UIView!
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchFooterView: UIView!
    @IBOutlet weak var locationSearchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTableView.delegate = self
        searchTableView.dataSource = self
        
        
        searchTableView.register(UINib(nibName: "AddLocationNameTableViewCell", bundle: nil), forCellReuseIdentifier: "AddLocationNameTableViewCell")
        searchTableView.register(UINib(nibName: "TypeOfLocationTableViewCell", bundle: nil), forCellReuseIdentifier: "TypeOfLocationTableViewCell")
        searchTableView.register(UINib(nibName: "SearchTableViewCellTableViewCell", bundle: nil), forCellReuseIdentifier: "SearchTableViewCellTableViewCell")
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
        
        searchLocationView?.layer.borderColor = UIColor.white.cgColor
        searchLocationView.layer.cornerRadius = 11
        searchLocationView.layer.borderWidth = 1
        searchLocationView.layer.shadowOffset = .zero
        searchLocationView.layer.shadowOpacity = 1
        searchLocationView.layer.masksToBounds =  false
        
        
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

extension SearchLocationViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
       else if section == 1{
            return 1
        }
        else if section == 2 {
          return 2
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 100
        }
        else if indexPath.section == 1{
            return 230
        }
        else if indexPath.section == 2 {
          return 110
            
        }
        else{
            return 0.1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddLocationNameTableViewCell", for: indexPath)as! AddLocationNameTableViewCell
            return cell
        }
       else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TypeOfLocationTableViewCell", for: indexPath)as! TypeOfLocationTableViewCell
            return cell
        }
        else {
             let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCellTableViewCell", for: indexPath)as! SearchTableViewCellTableViewCell
             return cell
         }
         
        
    }
    
    
}
