//
//  CollectionVC.swift
//  GalleryApp
//
//  Created by Sungur on 25.03.2022.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let images: [String] = ["image1", "image2", "image3", "image4", "image5",
                            "image6", "image7", "image8", "image9", "image10"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? GalleryCell {
            cell.imageView.image = UIImage(named: images[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }

}
