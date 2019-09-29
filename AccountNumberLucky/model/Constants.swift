//
//  Constants.swift
//  AccountNumberLucky
//
//  Created by Piyada Suwansa-ard on 29/9/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import Foundation

enum Key: String {
    case accountNumber = "accountNumber"
    case accountType = "accountType"
    case firstname = "firstname"
    case lastname = "lastname"
}

enum Response: String {
    case connectSuccess = "connect success"
    case createSuccess = "create success"
    case writeSuccess = "write success"
    case readSuccess = "read success"
    case updateSuccess = "update success"
    case deleteSuccess = "delete success"


    case connectionError = "connect failed"
    case createError = "create failed"
    case writeError = "write failed"
    case readError = "read failed"
    case updateError = "update failed"
    case deleteError = "delete failed"

}

