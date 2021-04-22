//
//  File.swift
//  Banking Model
//
//  Created by CSUFTitan on 4/22/21.
//

import Foundation

class Bank {
    var bankClients: [String:Int]
    var bankName: String
    var totalBalance: Double
    var phoneNumber: Int
    var bankID: Int
    init() {
        bankClients = [:]
        bankName = ""
        totalBalance = 0
        phoneNumber = 0
        bankID = 0
    }

    func addBankClients(_ name: String, _ ID: Int) {
        //for (key, value) in bankClients {
        //}
    }

    func incBalance(_ deposit: Double) {
        totalBalance += deposit
    }
    
    func decBalance(_ withdraw: Double){
        totalBalance -= withdraw
    }
    func transaction(){
        
    }

}
