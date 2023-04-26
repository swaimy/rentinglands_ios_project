//
//  SignUpViewController.swift
//  RentingLand
//
//  Created by Mamta on 19/04/23.
//

import UIKit

class SignUpViewController: UIViewController,OtpBlurDelegate {
   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var signUpNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signUpContinueBtn: UIButton!
    @IBOutlet weak var termAndConditionBtn: UIButton!
    @IBOutlet weak var signUpCountryView: UIView!
   
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
   
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.isToolbarHidden = true
        
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        signUpCountryView.layer.borderWidth = 1
        signUpCountryView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        signUpNumberTextField.layer.borderWidth = 1
        signUpNumberTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        termAndConditionBtn.layer.borderWidth = 1
        termAndConditionBtn.layer.borderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0).cgColor
        
        
        
    }
    
    func forBlur(){
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.blurEffectView.frame = view.bounds
        self.blurEffectView.backgroundColor = .black
        self.blurEffectView.alpha = 0.2
        self.blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(blurEffectView)
        self.definesPresentationContext = true
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OtpViewController") as! OtpViewController
          vc.delegate = self
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc,animated: true, completion: nil)
    }
    
    func verify() {
        blurEffectView.removeFromSuperview()
        let vC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController")as! TabBarViewController
        self.navigationController?.pushViewController(vC, animated: true)
    }
    
    func cancel() {
        blurEffectView.removeFromSuperview()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signInActionBtn(_ sender: Any) {
        let vC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")as! LoginViewController
        self.navigationController?.pushViewController(vC, animated: true)
    }
    
    @IBAction func continueBtnAction(_ sender: Any) {
        forBlur()
       
        
        }
    

}
