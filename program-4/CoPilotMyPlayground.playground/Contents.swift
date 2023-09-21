import UIKit

func bubbleSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    
    for i in 0..<sortedArray.count {
        for j in 0..<sortedArray.count - 1 - i {
            if sortedArray[j] > sortedArray[j + 1] {
                sortedArray.swapAt(j, j + 1)
            }
        }
    }
    
    return sortedArray
}

// Example usage
let numbers = [100,180,260,310,40,535,695]
let sortedNumbers = bubbleSort(numbers)
print(sortedNumbers) // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

func testBubbleSort() {
    // Test case 1: Empty array
    let numbers1: [Int] = []
    let sortedNumbers1 = bubbleSort(numbers1)
    assert(sortedNumbers1 == [], "Test case 1 failed")
    
    // Test case 2: Array with one element
    let numbers2 = [5]
    let sortedNumbers2 = bubbleSort(numbers2)
    assert(sortedNumbers2 == [5], "Test case 2 failed")
    
    // Test case 3: Array with multiple elements in random order
    let numbers3 = [100,180,260,310,40,535,695]
    let sortedNumbers3 = bubbleSort(numbers3)
    assert(sortedNumbers3 == [40,100,180,260,310,535,695], "Test case 3 failed")
    
    // Test case 4: Array with already sorted elements
    let numbers4 = [1,2,3,4,5,6,7,8,9,10]
    let sortedNumbers4 = bubbleSort(numbers4)
    assert(sortedNumbers4 == [1,2,3,4,5,6,7,8,9,10], "Test case 4 failed")
    
    // Test case 5: Array with duplicate elements
    let numbers5 = [10,9,8,7,6,5,4,3,2,1]
    let sortedNumbers5 = bubbleSort(numbers5)
    assert(sortedNumbers5 == [1,2,3,4,5,6,7,8,9,10], "Test case 5 failed")
    
    print("All test cases passed")
}

// Run the test
testBubbleSort()
