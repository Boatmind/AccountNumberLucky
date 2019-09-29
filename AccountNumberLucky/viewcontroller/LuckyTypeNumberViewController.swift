//
//  LuckyTypeNumberViewController.swift
//  AccountNumberLucky
//
//  Created by Pawee Kittiwathanakul on 29/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit

class LuckyTypeNumberViewController: UIViewController {
  var luckNumberType : [LuckNumberType] = []
  
  @IBOutlet weak var tableview: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    let bundle = Bundle(for: LuckyTypeNumberTableViewCell.self)
    let nib = UINib(nibName: "LuckyTypeNumberTableViewCell", bundle: bundle)
    tableview.register(nib, forCellReuseIdentifier: "LuckyTypeNumberTableViewCell")
    
    for value in 0...1 {
      if value == 0 {
         let luckNumber = LuckNumberType(image: "LuckNumberOfLove", title: "Test\(value)", discription: "TestDes\(value)")
         luckNumberType.append(luckNumber)
      }else {
         let luckNumber = LuckNumberType(image: "LuckyNumberOfWork", title: "Test\(value)", discription: "TestDes\(value)")
         luckNumberType.append(luckNumber)
      }
    }
  
  }
  
  
}
extension LuckyTypeNumberViewController : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return luckNumberType.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "LuckyTypeNumberTableViewCell", for: indexPath) as? LuckyTypeNumberTableViewCell else {
      return UITableViewCell()
    }
    
    let lucknumbertype = luckNumberType[indexPath.row]
    cell.setUi(lucknumberTypeAtIndex: lucknumbertype)
  
   
//  
//    let shadowPath2 = UIBezierPath(rect: cell.bounds)
//    cell.layer.masksToBounds = true
//    cell.layer.shadowColor = UIColor.black.cgColor
//    cell.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
//    cell.layer.shadowOpacity = 1.0
//    cell.layer.shadowPath = shadowPath2.cgPath
    
    
    
    return cell
  }
  
  
}

extension LuckyTypeNumberViewController : UITableViewDelegate {
//  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//     // ความสูงของ cell
//  }

  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50.0
  }

}


