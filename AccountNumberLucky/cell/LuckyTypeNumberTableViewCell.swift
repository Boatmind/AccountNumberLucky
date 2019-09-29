//
//  LuckyTypeNumberTableViewCell.swift
//  AccountNumberLucky
//
//  Created by Pawee Kittiwathanakul on 29/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit

class LuckyTypeNumberTableViewCell: UITableViewCell {

  @IBOutlet weak var luckyTypeImageView: UIImageView!
  
  @IBOutlet weak var titleLabel: UILabel!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  func setUi(lucknumberTypeAtIndex : LuckNumberType) {
    
       luckyTypeImageView.image = UIImage(named: lucknumberTypeAtIndex.image)
       titleLabel.text = lucknumberTypeAtIndex.title
       descriptionLabel.text = lucknumberTypeAtIndex.discription
  }
}
