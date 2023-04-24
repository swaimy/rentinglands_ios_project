//
//  RentAgreementViewController.swift
//  RentingLand
//
//  Created by Mamta on 24/04/23.
//

import UIKit

class RentAgreementViewController: UIViewController {

    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var countryCodeView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cityView: UIView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var locationBottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        nameView.layer.borderWidth = 1
        nameView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        countryCodeView.layer.borderWidth = 1
        countryCodeView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
      
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        numberTextField.layer.borderWidth = 1
        numberTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor

        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        addressTextField.layer.borderWidth = 1
        addressTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor


        zipCodeTextField.layer.borderWidth = 1
        zipCodeTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        cityView.layer.borderWidth = 1
        cityView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor(red: 35/255, green: 60/255, blue: 142/255, alpha: 1.0).cgColor

        locationBottomView?.layer.borderColor = UIColor.white.cgColor
        locationBottomView.layer.cornerRadius = 11
        locationBottomView.layer.borderWidth = 1
        locationBottomView.layer.shadowOffset = .zero
        locationBottomView.layer.shadowOpacity = 1
        locationBottomView.layer.masksToBounds =  false
        

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
