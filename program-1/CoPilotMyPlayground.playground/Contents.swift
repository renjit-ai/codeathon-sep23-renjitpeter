import UIKit

var greeting = "Hello, playground"

func sortStringByFrequency(_ s: String) -> String {
    // Count the frequency of each character in the string
    var freq: [Character: Int] = [:]
    for char in s {
        freq[char, default: 0] += 1
    }
    
    // Sort the characters based on their frequency in descending order
    let sortedChars = freq.keys.sorted { freq[$0]! > freq[$1]! }
    
    // Build the final string by repeating each character based on its frequency
    var result = ""
    for char in sortedChars {
        result += String(repeating: char, count: freq[char]!)
    }
    
    return result
}

sortStringByFrequency("hello world")
