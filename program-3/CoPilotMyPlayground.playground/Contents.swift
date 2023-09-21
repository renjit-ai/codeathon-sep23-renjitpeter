import UIKit

func validateIPAddress(_ ipAddress: String) -> Bool {
    let components = ipAddress.components(separatedBy: ".")
    
    if components.count != 4 {
        return false
    }
    
    for component in components {
        guard let value = Int(component) else {
            return false
        }
        
        if value < 0 || value > 255 {
            return false
        }
        
        if String(value) != component {
            return false
        }
    }
    
    return true
}

// Example usage
let ipAddress1 = "255.255.0.0"
let isValid1 = validateIPAddress(ipAddress1)
print(isValid1) // Output: true

let ipAddress2 = "555.555.555.555"
let isValid2 = validateIPAddress(ipAddress2)
print(isValid2) // Output: false

let ipAddress3 = "256.255.0.0"
let isValid3 = validateIPAddress(ipAddress3)
print(isValid3) // Output: false

func testValidateIPAddress() {
    let ipAddress1 = "192.168.0.1"
    let isValid1 = validateIPAddress(ipAddress1)
    assert(isValid1 == true, "Test case 1 failed")
    
    let ipAddress2 = "256.0.0.1"
    let isValid2 = validateIPAddress(ipAddress2)
    assert(isValid2 == false, "Test case 2 failed")
    
    let ipAddress3 = "192.168.0"
    let isValid3 = validateIPAddress(ipAddress3)
    assert(isValid3 == false, "Test case 3 failed")
    
    let ipAddress4 = "0.0.0.0"
    let isValid4 = validateIPAddress(ipAddress4)
    assert(isValid4 == true, "Test case 4 failed")
    
    let ipAddress5 = "127.0.0.1"
    let isValid5 = validateIPAddress(ipAddress5)
    assert(isValid5 == true, "Test case 5 failed")
    
    let ipAddress6 = "10.10.10.10"
    let isValid6 = validateIPAddress(ipAddress6)
    assert(isValid6 == true, "Test case 6 failed")
    
    let ipAddress7 = "192.168.0.01"
    let isValid7 = validateIPAddress(ipAddress7)
    assert(isValid7 == false, "Test case 7 failed")
    
    print("All test cases passed")
}

// Run the test
testValidateIPAddress()
