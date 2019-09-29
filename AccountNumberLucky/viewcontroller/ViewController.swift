//
//  ViewController.swift
//  AccountNumberLucky
//
//  Created by Pawee Kittiwathanakul on 28/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit
import Firebase

protocol ViewControllerProtocol {
    func getAccountList(list: [AccountNumber])
    func getAccount(account: AccountNumber)
}

class ViewController: UIViewController {
    private var firebase: FirebaseManager!

    @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    firebase = FirebaseManager()

    }
    
    func run() {
        let account = AccountNumber(accountNumber: "test", accountType: "test", firstname: "test", lastname: "test")
        // create accountNumber
        firebase.createAccountNumber(account: account)
        // get accountNumber dict list
        firebase.getAccountNumberDict()
        // get accountNumber by accountNumber
        firebase.getAccountNumber(accNumber: "test")
        // update accountNumber by old acoountNumber
        firebase.updateAccountNumber(fromAccountNumber: "test", toAccount:
            AccountNumber(accountNumber: "000-000-000-1",
                          accountType: "Saving",
                          firstname: "Noey",
                          lastname: "Eiei"))
        // delete account number by account number
        firebase.deleteAccountNumber(accountNumber: "000-000-000-1")
    }
  
    static func getAccountList(list: [AccountNumber]) {
        // TODO: get account list from firebase
        for data in list {
            print("getAccountList(list: [AccountNumber]) = \(data)")
        }
    }
    
    static func getAccount(account: AccountNumber) {
        // TODO: get account from firebase by accountNumber
        print("getAccount(account: AccountNumber) = \(account)")
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

