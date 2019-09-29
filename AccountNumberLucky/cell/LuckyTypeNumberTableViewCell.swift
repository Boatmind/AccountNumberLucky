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
  
  @IBOutlet weak var viewCell: UIView!
  
  func setUi(lucknumberTypeAtIndex : LuckNumberType) {
    
       luckyTypeImageView.image = UIImage(named: lucknumberTypeAtIndex.image)
       titleLabel.text = lucknumberTypeAtIndex.title
       descriptionLabel.text = lucknumberTypeAtIndex.discription
    viewCell.layer.cornerRadius = 5.0
    viewCell.layer.shadowColor = UIColor.gray.cgColor
    viewCell.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    viewCell.layer.shadowRadius = 5.0
    viewCell.layer.shadowOpacity = 0.7
    
  }
}
