/*import Foundation

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
        bankClients[name] = ID
    }

    func incBalance(_ deposit: Double) {
        totalBalance += deposit
    }
    
    func decBalance(_ withdraw: Double){
        totalBalance -= withdraw
    }
    
    func printTransactions(){
        for (key, value) in bankClients {
            print("\(key): \(value)")
        }
    }
    
    func readWriteData() {
        let filename = "ClientData"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = DocumentDirURL.appendingPathComponent(filename).appendingPathExtension(".txt")
        
        print("File Path: \(fileURL.path)")
        
        let writeString = "Test String"
        do {
            // Write out Data to file
            try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
            
        } catch let error as NSError {
            print("Failed to write to URL ")
            print(error)
        }
        var readString = ""
        do {
            readString = try String(contentsOf: fileURL)
        } catch let error as NSError{
            print("Failed to read file")
            print(error)
        }
        
        print("Contents of the file \(readString)")
    }

}
*/
