//
//  VM.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 16/05/1445 AH.
//
import Foundation
import CloudKit

class ViewModel: ObservableObject{
    @Published var azef : [azefUser] = []
    
    //1
    func fetchazef(){
        let predicate = NSPredicate(value: true)
        //2
        //let predicate2 = NSPredicate(format: "firstName == %@", "Sara")
        
        //Record Type depends on what you have named it
        let query = CKQuery(recordType:"azefUser", predicate: predicate)
        
        
        let operation = CKQueryOperation(query: query)
        operation.recordMatchedBlock = { recordId, result in
            DispatchQueue.main.async {
                switch result{
                case .success(let record):
                    let azef = azefUser(record: record)
                    self.azef.append(azef)
                case .failure(let error):
                    print("\(error.localizedDescription)")
                }
            }
        }
        
        CKContainer(identifier: "N.VideoPlayScreen").publicCloudDatabase.add(operation)
        
        
        
    }
    
    func addazef(){
        let record = CKRecord(recordType: "azefUser")
        record["firstName"] = "Reema"
        record["lastName"] = "Ahmed"
        record["email"] = "reema123@gmail.com"
        record["ID"] = 23
        
       
        
        CKContainer(identifier: "N.VideoPlayScreen").publicCloudDatabase.save(record) { record, error in
            guard  error  == nil else{
                print(error?.localizedDescription ?? "an unknown error occurred")
                return
            }
        }
    }
    
    
}


