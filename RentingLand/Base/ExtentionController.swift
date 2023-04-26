//
//  ExtentionController.swift
//  RentingLand
//
//  Created by Mamta on 24/04/23.
//

import Foundation
import UIKit


extension UIPageControl {

    func customPageControl(dotFillColor:UIColor, dotBorderColor:UIColor, dotBorderWidth:CGFloat) {
        for (pageIndex, dotView) in self.subviews.enumerated() {
            if self.currentPage == pageIndex {
                dotView.backgroundColor = dotFillColor
                dotView.layer.cornerRadius = dotView.frame.size.height / 2
            }else{
                dotView.backgroundColor = .clear
                dotView.layer.cornerRadius = dotView.frame.size.height / 2
                dotView.layer.borderColor = dotBorderColor.cgColor
                dotView.layer.borderWidth = dotBorderWidth
            }
        }
    }

}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

extension UITextField {

    //MARK:- Set Image on the right of text fields

  func setupRightImage(imageName:String){
    let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
    imageView.image = UIImage(named: imageName)
    let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
    imageContainerView.addSubview(imageView)
    rightView = imageContainerView
    rightViewMode = .always
    self.tintColor = .lightGray
}

 //MARK:- Set Image on left of text fields

    func setupLeftImage(imageName:String){
       let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
       imageView.image = UIImage(named: imageName)
       let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
       imageContainerView.addSubview(imageView)
       leftView = imageContainerView
       leftViewMode = .always
       self.tintColor = .lightGray
     }

  }


