class Solution:
    def maxProfit(self, prices: List[int]) -> int:

        # sliding window 
        max_profit = 0 
        L = 0 
        
        for R in range(1, len(prices)):
            profit = prices[R] - prices[L]
            if prices[R] < prices[L]:
                L = R
            else:
                max_profit = max(max_profit, profit)
        return max_profit 
        