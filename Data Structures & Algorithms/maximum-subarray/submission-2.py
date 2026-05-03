class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        # brute force 
        result = float('-inf')

        for i in range(len(nums)):
            total = 0 
            for j in range(i,len(nums)):
                total += nums[j]
                result = max(result, total)
        return result 
        