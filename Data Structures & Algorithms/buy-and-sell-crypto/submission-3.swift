class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        // sliding window way
        var maxP = 0
        var R = 1
        var L = 0

        while R < prices.count{
            if prices[L] < prices[R]{
                let profit = prices[R] - prices[L]
                maxP = max(profit, maxP)
            }
            else{
                // move L pointer 
                L = R
            }
            R += 1
        }
        return maxP


    }
}
