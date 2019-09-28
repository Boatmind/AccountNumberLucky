//
//  ViewController.swift
//  AccountNumberLucky
//
//  Created by Pawee Kittiwathanakul on 28/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

extension ViewController : UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "LuckyCollectionViewCell", for: indexPath) as? LuckyCollectionViewCell else {
        return UICollectionViewCell()
    }
    
    return cell
    
  }
  
  
}

