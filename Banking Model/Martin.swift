//
//  Martin.swift
//  Banking Model
//
//  Created by CSUFTitan on 4/8/21.
//

import Foundation

class Address: Codable {
    var street : String
    var city : String
    var state : String
    var postalCode : Int
    var country : String
    init(street: String, city: String, state: String, postalCode: Int, country: String) {
        self.street = street
        self.city = city
        self.state = state
        self.postalCode = postalCode
        self.country = country
    }
    
    
}
