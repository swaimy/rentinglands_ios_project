//
//  LoginViewController.swift
//  RentingLand
//
//  Created by Mamta on 19/04/23.
//
// swaim commit
import UIKit

class LoginViewController: UIViewController,OtpBlurDelegate {
  
    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var termConditionButton: UIButton!
    
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      self.navigationController?.isNavigationBarHidden = true

       // self.navigationController?.navigationItem.
        // Do any additional setup after loading the view.
        countryView.layer.borderWidth = 1
        countryView.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
    
        numberTextField.layer.borderWidth = 1
        numberTextField.layer.borderColor = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1.0).cgColor
        
        termConditionButton.layer.borderWidth = 1
        termConditionButton.layer.borderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0).cgColor
        
    }
    
    
    
    @IBAction func loginContinueBtn(_ sender: Any) {
        forBlur()
        
        
    }
    
    @IBAction func goToSignUpButton(_ sender: Any) {
        
      
        
        
        
        let vC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController")as!SignUpViewController
        self.navigationController?.pushViewController(vC, animated: true)
      
        
    }
    
     // Mark : - Otp Dismis
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
    
    
    
}
