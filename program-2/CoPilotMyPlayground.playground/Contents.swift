import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 {
        return -1
    }
    
    var buyDay = 0
    var sellDay = 0
    var maxProfit = 0
    
    for i in 0..<prices.count {
        for j in i+1..<prices.count {
            let profit = prices[j] - prices[i]
            
            if profit > maxProfit {
                maxProfit = profit
                buyDay = i
                sellDay = j
            }
        }
    }
    
    var returnString = "No profit can be made"
    
    if maxProfit != 0 {
        
        return maxProfit
print("""
        Buy on day \(buyDay) at price \(prices[buyDay])
        Sell on day \(sellDay) at price \(prices[sellDay])
        Max profit: \(maxProfit)
""")
    } else {
        return -1
        print("No profit can be made")
    }
}

maxProfit([100,180,260,310,40,535,695])


func testMaxProfit() {
    let stockPrices1 = [7, 1, 5, 3, 6, 4]
    let profit1 = maxProfit(stockPrices1)
    assert(profit1 == 5, "Test case 1 failed")
    
    let stockPrices2 = [7, 6, 4, 3, 1]
    let profit2 = maxProfit(stockPrices2)
    assert(profit2 == -1, "Test case 2 failed")
    
    let stockPrices3 = [2, 4, 1]
    let profit3 = maxProfit(stockPrices3)
    assert(profit3 == 2, "Test case 3 failed")
    
    let stockPrices4 = [2, 2, 2, 2]
    let profit4 = maxProfit(stockPrices4)
    assert(profit4 == -1, "Test case 4 failed")
    
    print("All test cases passed")
}

// Run the test
testMaxProfit()
