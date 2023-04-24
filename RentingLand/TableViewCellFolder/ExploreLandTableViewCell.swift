//
//  ExploreLandTableViewCell.swift
//  RentingLand
//
//  Created by Mamta on 20/04/23.
//

import UIKit

class ExploreLandTableViewCell: UITableViewCell {

    var array = ["Group1","Group4","Group2","Group3","Group4","Group1","Group2"]
    var arrayText = ["Urban","Permaculture","Rewild","Rehabilitation","Rewild","Rehabilitation","Rewild"]
    @IBOutlet weak var exploreLandCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        // Initialization code
        exploreLandCollectionView.delegate = self
        exploreLandCollectionView.dataSource = self
        exploreLandCollectionView.register(UINib(nibName: "ExploreLandsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ExploreLandsCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ExploreLandTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreLandsCollectionViewCell", for: indexPath) as! ExploreLandsCollectionViewCell
         cell.exploreLandImage.image = UIImage(named: array[indexPath.row])
        cell.landTextLabel.text = arrayText[indexPath.row]
          return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 105)
    }
    
    
}
