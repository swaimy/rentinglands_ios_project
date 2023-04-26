//
//  RentAgreementFormViewController.swift
//  RentingLand
//
//  Created by Mamta on 26/04/23.
//

import UIKit

class RentAgreementFormViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var startDateTextfield: UITextField!
    @IBOutlet weak var adreementDurationView: UIView!
    @IBOutlet weak var rentDateTextField: UITextField!
    @IBOutlet weak var monthlyRentTextField: UITextField!
    @IBOutlet weak var securityAmountTextField: UITextField!
    @IBOutlet weak var noticePeriodView: UIView!
    @IBOutlet weak var checkBox: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        startDateTextfield.layer.borderWidth = 1
        startDateTextfield.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        adreementDurationView.layer.borderWidth = 1
        adreementDurationView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        rentDateTextField.layer.borderWidth = 1
        rentDateTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        monthlyRentTextField.layer.borderWidth = 1
        monthlyRentTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        securityAmountTextField.layer.borderWidth = 1
        securityAmountTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        noticePeriodView.layer.borderWidth = 1
        noticePeriodView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        checkBox.layer.borderWidth = 1
        checkBox.layer.borderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0).cgColor
        
        
        bottomView?.layer.borderColor = UIColor.white.cgColor
        bottomView.layer.cornerRadius = 11
        bottomView.layer.borderWidth = 1
        bottomView.layer.shadowOffset = .zero
        bottomView.layer.shadowOpacity = 1
        bottomView.layer.masksToBounds =  false
        
        self.startDateTextfield.setLeftPaddingPoints(20)
        self.startDateTextfield.setRightPaddingPoints(20)
        self.startDateTextfield.setupRightImage(imageName: "calenderImage")
        
        self.rentDateTextField.setLeftPaddingPoints(20)
        self.rentDateTextField.setRightPaddingPoints(20)
        self.rentDateTextField.setupRightImage(imageName: "calenderImage")
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
