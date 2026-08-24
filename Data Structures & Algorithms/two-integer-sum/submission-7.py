class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        nDict = {}
        # one pass 
        # O(n) time 
        # O(n) space
        for i, n in enumerate(nums):
            comp = target - n
            if comp in nDict: 
                return [nDict[comp], i]
            # populate dict 
            nDict[n] = i 
        return [] 

        