class Solution:
    def search(self, nums: List[int], target: int) -> int:

        L = 0 
        R = len(nums) - 1

        while L <= R:
            mid = ( R + L ) // 2

            if target == nums[mid]:
                return mid

            # left side is sorted
            if nums[L] <= nums[mid]:
                if target > nums[mid] or target < nums[L]:
                    L = mid + 1 
                else: 
                    R = mid - 1 
            # right portion 
            else: 
                if target < nums[mid] or target > nums[R]:
                    R = mid - 1
                else: 
                    L = mid + 1 
        return -1 
                



            

        