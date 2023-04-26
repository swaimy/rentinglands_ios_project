//
//  SlideMenuViewController.swift
//  RentingLand
//
//  Created by Mamta on 26/04/23.
//

import UIKit

class SlideMenuViewController: UIViewController {

    var ArrayImage = ["home menubarImage","menubarWislistImage","menubarProfileImage","menubarAgreemnetImage","menubarSettingImage","menubarRateUsImage","menubarLogoutImage"]
  
    @IBOutlet weak var slideMenuTableView: UITableView!
   @IBOutlet weak var backGroundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        slideMenuTableView.delegate = self
        slideMenuTableView.dataSource = self
        slideMenuTableView.register(UINib(nibName: "MenuBarTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuBarTableViewCell")
        slideMenuTableView.register(UINib(nibName: "MenubarHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "MenubarHeaderView")
        
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        backGroundView.addGestureRecognizer(tap)
        
             
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.dismiss(animated: true, completion: nil)
     
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


extension SlideMenuViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayImage.count
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "MenubarHeaderView") as! MenubarHeaderView
       headerView.cancelButton.addTarget(self, action: #selector(SlideMenuViewController.oneTapped(_:)), for: .touchUpInside)
               return headerView
           }
    
    @objc func oneTapped(_ sender: Any?) {
    self.dismiss(animated: true, completion: nil)
    }
 
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 130
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 60
          }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuBarTableViewCell", for: indexPath)as! MenuBarTableViewCell
        cell.menubarImage.image = UIImage(named: ArrayImage[indexPath.row])
        return cell
      }
 }
