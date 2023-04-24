//
//  LandForRentCollectionViewCell.swift
//  RentingLand
//
//  Created by Mamta on 20/04/23.
//

import UIKit

class LandForRentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var rentLandView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        rentLandView.layer.cornerRadius = 20
        rentLandView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        rentLandView.layer.shadowRadius = 20
        rentLandView.layer.shadowOpacity = 10
        rentLandView.layer.shouldRasterize = true
        rentLandView.layer.masksToBounds = true
        
        
    }

}
