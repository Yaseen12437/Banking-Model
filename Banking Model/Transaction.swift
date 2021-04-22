//
//  File.swift
//  Banking Model
//
//  Created by CSUFTitan on 4/22/21.
//

import Foundation

class Transaction {
    var name: String
    var totalAmount: Int
    var receiverTotal: Int
    
    init(name: String, totalAmount: Int, receiverTotal: Int) {
        self.name = name
        self.totalAmount = totalAmount
        self.receiverTotal = receiverTotal
    }
    
    func deposit(_ name: String, depositNum: Int) -> Int {
        //calculation for passable deposit amount
        totalAmount = totalAmount + depositNum
        print("\(name) deposited $\(depositNum)\n")
        print("Your total is now $\(totalAmount)\n")
        return totalAmount
    }
    func withdraw(_ name: String, withdrawNum: Int) -> Int{
        //when total equals $0 'error'
        if totalAmount == 0 {
            print("\(name) has $0 in the bank and cannot withdraw any money.\n")
        }
        //when withdrawal amount is greater than total 'error'
        else if withdrawNum > totalAmount {
            print("\(name) does not have enough money to withdraw that amount.\n")
        }
        //calculation for passable withdrawal amount
        else {
            totalAmount = totalAmount - withdrawNum
            print("\(name) withdrew $\(withdrawNum).\n")
            print("Your total is now $\(totalAmount).\n")
        }
        return totalAmount
    }
    func send(to person1: String, from person2: String, amount: Int) -> Int {
        //when total equals $0 'error'
        if totalAmount == 0 {
            print("\(person2) has $0 in the bank and cannot send the money.\n")
        }
        //when amount sent is greater than total 'error'
        else if amount > totalAmount {
            print("\(person2) does not have enough money to send to \(person1).\n")
        }
        //calculation for passable total amount for each person
        else {
            totalAmount = totalAmount - amount
            receiverTotal = receiverTotal + amount
            print("\(person1) sent $\(amount) to \(person2)!\n")
            print("\(person1) has a total of \(receiverTotal)\n")
            print("\(person2) has a total of \(totalAmount)\n")
        }
        return totalAmount
    }
}
