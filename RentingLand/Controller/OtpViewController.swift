//
//  OtpViewController.swift
//  RentingLand
//
//  Created by Mamta on 19/04/23.
//

import UIKit
import OTPFieldView

protocol OtpBlurDelegate: AnyObject{
    func verify()
    func cancel()
}

class OtpViewController: UIViewController,OTPFieldViewDelegate{
    
    weak var delegate:OtpBlurDelegate?
    
    @IBOutlet weak var otpFieldsView: OTPFieldView!
    override func viewDidLoad() {
        super.viewDidLoad()
        otpFieldViewUi()
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
    
    func otpFieldViewUi(){
        otpFieldsView.layer.cornerRadius = 15
        otpFieldsView.fieldsCount = 4
        otpFieldsView.fieldBorderWidth = 2
        otpFieldsView.filledBorderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0)
        
        otpFieldsView.filledBorderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0)
        otpFieldsView.cursorColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0)
        otpFieldsView.displayType = .circular
        otpFieldsView.fieldSize = 60
        otpFieldsView.separatorSpace = 16
        otpFieldsView.shouldAllowIntermediateEditing = false
        otpFieldsView.delegate = self
        otpFieldsView.initializeUI()
    }
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return false
    }
    
    
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: { [self] in
        delegate?.cancel()
            
        })
        
        
    }
    
    
    
    @IBAction func verifyActionBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: { [self] in
        delegate?.verify()
        
        
                    }
        )}

                     
                     
}
