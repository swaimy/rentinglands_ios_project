//
//  AddLocationNameTableViewCell.swift
//  RentingLand
//
//  Created by Mamta on 25/04/23.
//

import UIKit

class AddLocationNameTableViewCell: UITableViewCell {
   
    @IBOutlet weak var addLocationCollectionView: UICollectionView!
   
    var addCityArray = ["Melbourne","Sydney"]
    override func awakeFromNib() {
        super.awakeFromNib()
        addLocationCollectionView.delegate = self
        addLocationCollectionView.dataSource = self
        // Initialization code
        addLocationCollectionView.register(UINib(nibName: "AddLocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AddLocationCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension AddLocationNameTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return addCityArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddLocationCollectionViewCell", for: indexPath) as! AddLocationCollectionViewCell
        cell.addPlaceLabel.text  = addCityArray[indexPath.row]
        cell.layer.borderWidth  = 1
        cell.layer.cornerRadius = 17
        cell.layer.borderColor = UIColor(red: 232/255, green: 140/255, blue: 14/255, alpha: 1.0).cgColor
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 36)
    }
    
    
}
