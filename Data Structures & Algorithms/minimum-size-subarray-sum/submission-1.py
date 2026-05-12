class Solution:
    def minSubArrayLen(self, target: int, nums: List[int]) -> int:
        # brute force 
         
        minLen = float('inf') # very large 

        for i in range(len(nums)): 
            runSum = 0
            for j in range(i, len(nums)):
                runSum += nums[j]

                if runSum >= target:
                    length = j - i + 1
                    minLen = min(length, minLen)
                    break
        if minLen == float('inf'):
            return 0
        return minLen 
                




        