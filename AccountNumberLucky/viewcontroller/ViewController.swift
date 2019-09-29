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
  

  @IBAction func buttonPerform(_ sender: Any) {
    performSegue(withIdentifier: "ViewConGoToLuckTypeViewCon", sender: nil)
  }
  
}



