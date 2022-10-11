//: [Previous](@previous)

import Foundation

//I have some company's stock prices from yesterday in an array called stockPrices.

//The indices are the time (in minutes) past trade opening time
//The values are the price of one share of the stock at that time.
//For example, the following array shows a stock that was $10 at minute m, $7 at minute m+1, $5 at minute m+2, etc.

//Write an efficient method that takes stockPrices and returns the best profit I could have made from one purchase and one sale of one share.

//For example, if we had the following stock prices
//let stockPrices = [10, 7, 5, 8, 11, 9]

//The result would be 6 (First buying it for 5 then selling it for 11).


let stockPrices = [10, 7, 5, 8, 11, 9]
let stockPricesExample2 = [7, 6, 5, 4, 3, 2, 1]
let stockPricesExample3 = [56, 1, 3, 5, 49, 100]
var stockPricesExample4 = [1, 2, 3, 56, 49, 1, 3]



func getMaxProfit(_ stockPrices: [Int]) -> Int {
    
    var leftMinute = 0
    var rightMinute = 1
    var maxProfit = 0
    
    if stockPrices.isEmpty { return 0 }
    
    while rightMinute < stockPrices.count {
        
        if stockPrices[leftMinute] < stockPrices[rightMinute] {
            let currentProfit = stockPrices[rightMinute] - stockPrices[leftMinute]
            maxProfit = max(currentProfit, maxProfit)
            rightMinute += 1
            
        } else {
            leftMinute = rightMinute
            rightMinute += 1
        }
    }
    return maxProfit
}
getMaxProfit(stockPricesExample4)


