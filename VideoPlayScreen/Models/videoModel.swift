//
//  videoModel.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 16/05/1445 AH.
//

import Foundation
import CloudKit


struct Instrument {
    let recordID: CKRecord.ID
    let name: String
    let description: String
    let regID: String
    let link: URL?
}

extension Instrument {
    init?(record: CKRecord) {
        guard let name = record["name"] as? String,
              let description = record["description"] as? String,
              let regID = record["regID"] as? String else {
            return nil
        }
        
        let linkString = record["link"] as? String
        let link = URL(string: linkString ?? "")
        
        self.recordID = record.recordID
        self.name = name
        self.description = description
        self.regID = regID
        self.link = link
    }
}

extension CKRecord {
    convenience init(instrument: Instrument) {
        self.init(recordType: "Instrument", recordID: instrument.recordID)
        self["name"] = instrument.name as CKRecordValue
        self["description"] = instrument.description as CKRecordValue
        self["regID"] = instrument.regID as CKRecordValue
        self["link"] = instrument.link?.absoluteString as CKRecordValue?
    }
}
