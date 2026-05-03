class Solution:
    def pivotIndex(self, nums: List[int]) -> int:

        for i in range(len(nums)):
            leftSum = 0 
            rightSum = 0 
            # l -> i
            for l in range(i):
                leftSum += nums[l]
            for r in range(i+1, len(nums)):
                rightSum += nums[r]
            if rightSum == leftSum:
                return i
        return -1

        