class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # binary search  
        L = 0 
        R = len(nums) - 1 

        while L <= R:
            # middle
            mid = (L + R) // 2 
            if nums[mid] > target: 
                R -= 1
            elif nums[mid] < target:
                L += 1 
            else: 
                return mid 
        return -1 

        


        