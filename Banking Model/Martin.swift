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

let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask) [0]
let fileURL = URL(fileURLWithPath: "addressFile", relativeTo: directoryURL).appendingPathExtension("txt")

//Creating data to be saved
func savingData() {
    let testString = "Data to be saved"
    guard let data = testString.data(using: .utf8) else {
        print("Cannot save string to data")
        return
    }
    
// Saving the data
    do {
        try data.write(to: fileURL)
        print("File saved: \(fileURL.absoluteURL)")
    }
//Catch any errors
    catch {
        print(error.localizedDescription)
    }
}

func readingData() {
//Retrieve the saved data
    do {
        let savedData = try Data(contentsOf: fileURL)
//Convert data back into a string
        if String(data: savedData, encoding: .utf8) != nil {
            print(savedData)
        }
    }
//Catch any errors
    catch {
        print("Unable to read the file")
    }
}
