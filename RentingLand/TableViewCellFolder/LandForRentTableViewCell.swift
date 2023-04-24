//
//  LandForRentTableViewCell.swift
//  RentingLand
//
//  Created by Mamta on 20/04/23.
//

import UIKit

class LandForRentTableViewCell: UITableViewCell {
   
    
    @IBOutlet weak var rentForLandCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        rentForLandCollectionView.delegate = self
        rentForLandCollectionView.dataSource = self
        rentForLandCollectionView.register(UINib(nibName: "LandForRentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LandForRentCollectionViewCell")
     }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
    }
    
}
extension LandForRentTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandForRentCollectionViewCell", for: indexPath)as!LandForRentCollectionViewCell
         return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 240, height: 280)
        
       }
    
  }
