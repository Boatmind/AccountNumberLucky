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
    
    luckNumberType = [LuckNumberType(image: "LuckNumberOfLove",
                                     title: "Test01",
                                     discription: "TestDes01"),
                      LuckNumberType(image: "LuckyNumberOfWork",
                                     title: "Test02",
                                     discription: "TestDes02")]
  
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


