//
//  AgreementPropertDetailViewController.swift
//  RentingLand
//
//  Created by Mamta on 26/04/23.
//

import UIKit

class AgreementPropertDetailViewController: UIViewController {

    @IBOutlet weak var areaTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        areaTextField.layer.borderWidth = 1
        areaTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
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
