class Solution:
    def findMin(self, nums: List[int]) -> int:
         
        L = 0 
        R = len(nums) - 1

        while L < R:
            mid = (R + L) // 2

            # if the middle is greater than the element to the far right 
            if nums[mid] > nums[R]:
                # min is to the right. 
                L = mid + 1 
            # if the middle is lesser than the R element 
            elif nums[mid] < nums[R]:
                R = mid 
            
        return nums[L]

