//
//  Martin.swift
//  Banking Model
//
//  Created by CSUFTitan on 4/8/21.
//

import Foundation

class Address : BankClient {
    var Street : String = ""
    var City : String = ""
    var State : String = ""
    var PostalCode : Int
    var Country : String = ""
    
    let addressFiles = Files(Street: " ", City: " ", State: " ", PostalCode: Int, Country: " " )
    let propertyListEncoder = PropertyListEncoder()
    if let encodedFiles = try?
        propertyListEncoder.encode(addressFiles) {
            try? encodedFiles?.write(to: archiveURL, options: .noFileProtection)
        }
    
    
    func MailedBankStatements() {
        
    }
}
