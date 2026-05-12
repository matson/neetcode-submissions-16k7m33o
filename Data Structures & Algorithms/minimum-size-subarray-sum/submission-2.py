class Solution:
    def minSubArrayLen(self, target: int, nums: List[int]) -> int:
        # sliding window 
        # very large
        minLen = float('inf')  
        L = 0 
        runSum = 0

        for R in range(len(nums)):
            runSum += nums[R]

            while runSum >= target:
                length = R - L + 1
                minLen = min(length, minLen)
                runSum -= nums[L]
                L += 1 
                
            
        if minLen == float('inf'):
            return 0
        return minLen 
                




        