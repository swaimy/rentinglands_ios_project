//
//  WishlistViewController.swift
//  RentingLand
//
//  Created by Mamta on 21/04/23.
//

import UIKit

class WishlistViewController: UIViewController {

    @IBOutlet weak var wishlistTableView: UITableView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wishlistTableView.dataSource = self
        wishlistTableView.delegate = self
        wishlistTableView.register(UINib(nibName: "WishlistTableViewCell", bundle: nil), forCellReuseIdentifier: "WishlistTableViewCell")
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


extension WishlistViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishlistTableViewCell", for: indexPath) as! WishlistTableViewCell
        cell.layer.cornerRadius = 12
        cell.wishlistBackView.layer.borderWidth = 0.5
        cell.wishlistBackView.layer.borderColor = UIColor.lightGray.cgColor
        cell.wishlistBackView.layer.cornerRadius = 15
        cell.wishlistBackView.layer.shadowOffset = .zero
        cell.wishlistBackView.layer.shadowOpacity = 1
        cell.wishlistBackView.layer.masksToBounds =  true
        cell.wishlistBackView.layer.cornerRadius = 15
        
        return cell
    }
    
    
   }
