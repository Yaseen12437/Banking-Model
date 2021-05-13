//
//  BankingModelTests.swift
//  BankingModelTests
//
//  Created by CSUFTitan on 5/6/21.
//

@testable import Banking_Model

import XCTest

class BankingModelTests: XCTestCase {
    
    func testInit() {
        let _ = Transaction(name: "Matt", totalAmount: 500, receiverTotal: 0)
    }
    func testDeposit() {
        let transaction = Transaction(name: "Matt", totalAmount: 500, receiverTotal: 0)
        transaction.deposit("Matt", depositNum: 50)
        XCTAssertEqual(transaction.totalAmount, 550)
    }
    func testWithdraw() {
        let transaction = Transaction(name: "Matt", totalAmount: 500, receiverTotal: 0)
        transaction.withdraw("Matt", withdrawNum: 50)
        XCTAssertEqual(transaction.totalAmount, 450)
    }

}
