class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        // O(n^2) solution
        var maxProfit = 0
        
        for i in 0..<prices.count{
            for j in i+1..<prices.count{
                // profit = prices[j] - prices[i]
                let profit = prices[j] - prices[i]
                if profit > maxProfit{
                    maxProfit = profit
                }
            }
        }
        return maxProfit
    }
}
