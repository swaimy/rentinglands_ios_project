//
//  DetailViewController.swift
//  RentingLand
//
//  Created by mac on 4/22/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var reviewTableView: UITableView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var bottomButtonView: UIView!
    @IBOutlet weak var similarPropertyCollectionView: UICollectionView!
    @IBOutlet weak var paginationCollectionView: UICollectionView!
    
    var PageControllerArray = ["pahinationImage","pahinationImage","pahinationImage","pahinationImage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reviewTableView.delegate = self
        reviewTableView.dataSource = self
        similarPropertyCollectionView.delegate = self
        similarPropertyCollectionView.dataSource = self
        paginationCollectionView.delegate = self
        paginationCollectionView.dataSource = self
        reviewTableView.register(UINib(nibName: "ReviewTableViewCell", bundle: nil), forCellReuseIdentifier: "ReviewTableViewCell")
        
        similarPropertyCollectionView.register(UINib(nibName: "LandForRentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LandForRentCollectionViewCell")
        paginationCollectionView.register(UINib(nibName: "PageControllerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PageControllerCollectionViewCell")
        // Do any additional setup after loading the view.
        
        bottomButtonView?.layer.borderColor = UIColor.white.cgColor
        bottomButtonView.layer.cornerRadius = 11
        bottomButtonView.layer.borderWidth = 1
        bottomButtonView.layer.shadowOffset = .zero
        bottomButtonView.layer.shadowOpacity = 1
        bottomButtonView.layer.masksToBounds =  false
        
        startTimer()
        pageController.currentPage = 0
        pageController.numberOfPages = PageControllerArray.count
        
        pageController.customPageControl(dotFillColor: .white, dotBorderColor: .green, dotBorderWidth: 2)
        
    }
    
    //Mark: PageController Code
   
    func startTimer() {

    let timer =  Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.scrollAutomatically), userInfo: nil, repeats: true)

    }
    
    
    
    @objc func scrollAutomatically(_ timer1: Timer) {

       if let coll  = paginationCollectionView {
           for cell in coll.visibleCells {
               let indexPath: IndexPath? = coll.indexPath(for: cell)
               if ((indexPath?.row)! < PageControllerArray.count - 1){
                   let indexPath1: IndexPath?
                   indexPath1 = IndexPath.init(row: (indexPath?.row)! + 1, section: (indexPath?.section)!)

                   coll.scrollToItem(at: indexPath1!, at: .left, animated: true)
               }
               else{
                   let indexPath1: IndexPath?
                   indexPath1 = IndexPath.init(row: 0, section: (indexPath?.section)!)
                   coll.scrollToItem(at: indexPath1!, at: .right, animated: true)
                 }

              }
          }

   
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


extension DetailViewController:  UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == similarPropertyCollectionView{
            let cell = similarPropertyCollectionView.dequeueReusableCell(withReuseIdentifier: "LandForRentCollectionViewCell", for: indexPath)as!LandForRentCollectionViewCell
            return cell
                }
        else{
            let cell = paginationCollectionView.dequeueReusableCell(withReuseIdentifier: "PageControllerCollectionViewCell", for: indexPath)as!PageControllerCollectionViewCell
            return cell
            
        }
       
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == similarPropertyCollectionView{
            return CGSize(width: 230, height: 285)
        }
        else{
            return CGSize(width:paginationCollectionView.frame.width, height: paginationCollectionView.frame.height)
          
             }
        
        }
    
  }


// Mark : TableView :- ReviewTableViewCell
//ReviewTableViewCell

extension DetailViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! ReviewTableViewCell
        return cell
    }
    
    
}
