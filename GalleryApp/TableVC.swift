//
//  TableVC.swift
//  GalleryApp
//
//  Created by Sungur on 25.03.2022.
//

import UIKit

class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let images: [String] = ["image1", "image2", "image3", "image4", "image5",
                            "image6", "image7", "image8", "image9", "image10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! UITableViewCell?
        cell?.imageView?.image = UIImage(named: images[indexPath.row])
        
        return cell!
        
    }
    
}
