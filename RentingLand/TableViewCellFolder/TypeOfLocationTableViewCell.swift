//
//  TypeOfLocationTableViewCell.swift
//  RentingLand
//
//  Created by Mamta on 25/04/23.
//

import UIKit

class TypeOfLocationTableViewCell: UITableViewCell {
  
    @IBOutlet weak var typeOfLandCollectionView: UICollectionView!
    
    var typeArray = ["Urban","Permaculture","Rehabilitation","Rewild Carbon","Urban","Permaculture","Rehabilitation","Urban"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        typeOfLandCollectionView.delegate = self
        typeOfLandCollectionView.dataSource = self
        typeOfLandCollectionView.register(UINib(nibName: "TypeOfLandCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TypeOfLandCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TypeOfLocationTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return typeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypeOfLandCollectionViewCell", for: indexPath) as! TypeOfLandCollectionViewCell
        cell.typeOfLandLabelName.text = typeArray[indexPath.row]
        cell.layer.borderWidth  = 1
        cell.layer.cornerRadius = 17
        cell.layer.borderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0).cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: 120, height: 36)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }

}

