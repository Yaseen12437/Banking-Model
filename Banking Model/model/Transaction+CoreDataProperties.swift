//
//  Transaction+CoreDataProperties.swift
//  Banking Model
//
//  Created by Alam, Yaseen on 5/5/21.
//
//

import Foundation
import CoreData


extension Transaction {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Transaction> {
        return NSFetchRequest<Transaction>(entityName: "Transaction")
    }

    @NSManaged public var name: String?
    @NSManaged public var recieverTotal: Double
    @NSManaged public var totalAmount: Double

}

extension Transaction : Identifiable {

}
