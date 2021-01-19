//
//  CollectionViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/19/21.
//

import UIKit


struct Photos {
    
    var image: String?
    var img: String?
}

class CollectionViewController: UICollectionViewController {
    
    let pageCollectionCellId = "PageCollectionViewCell"
    @IBOutlet weak var pageCV: UICollectionView!
    
    let twoDimensionalArrayCV: [[Photos]] = [
        [
        Photos.init(image: "lisa")
        ],
        [
        Photos.init(image: "jennie")
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        // Register cell classes
        let nibCell = UINib(nibName: pageCollectionCellId, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: pageCollectionCellId)
        
        
        // Do any additional setup after loading the view.
    }

   

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return twoDimensionalArrayCV.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return twoDimensionalArrayCV.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: pageCollectionCellId, for: indexPath) as! PageCollectionViewCell
        let photo = twoDimensionalArrayCV[indexPath.section][indexPath.row]
        cell.imageView.image = UIImage(named: photo.image!)
        // Configure the cell
        cell.layoutIfNeeded()
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    }

}
