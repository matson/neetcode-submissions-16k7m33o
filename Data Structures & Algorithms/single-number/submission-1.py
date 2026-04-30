class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        
        # trick: XOR by each other 
        result = 0
        for n in nums:
            result = n ^ result
        return result 