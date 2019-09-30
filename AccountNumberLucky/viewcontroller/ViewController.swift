//
//  ViewController.swift
//  AccountNumberLucky
//
//  Created by Pawee Kittiwathanakul on 28/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    private var firebase: FirebaseManager!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebase = FirebaseManager()
    }
    
    func createAccountNumber(accountNumber: AccountNumber) {
        firebase.createAccountNumber(account: accountNumber)
    }
    
    func getAccountNumberDict() {
        firebase.getAccountNumberDict() { [weak self] (data) in
            for item in data {
                print("getAccountList() = \(item)")
            }
        }
    }
    
    func getAccountNumber(accountName: String) {
        firebase.getAccountNumber(accNumber: accountName) { [weak self] (data) in
            print("getAccount() = \(data)")
        }
    }
    
    func updateAccountNumber(fromAccountNumber: String, toAccount: AccountNumber) {
        firebase.updateAccountNumber(fromAccountNumber: fromAccountNumber, toAccount: toAccount)
    }
    
    func deleteAccountNumber(accountNumber: String) {
        firebase.deleteAccountNumber(accountNumber: accountNumber)
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

