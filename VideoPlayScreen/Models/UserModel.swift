//
//  UserModel.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 16/05/1445 AH.
//

import Foundation
import CloudKit

struct azefUser : Identifiable{
    let id : CKRecord.ID
    let firstName : String
    let lastName : String
    let email : String
    let password : String
    
    init(record:CKRecord){
        self.id        = record.recordID
        self.firstName = record["firstName"] as? String ?? "N/A"
        self.lastName  = record["lastName"] as? String ?? "N/A"
        self.email     = record["email"] as? String ?? "N/A"
        self.password  = record["password"] as? String ?? "N/A"
    }
    
}
