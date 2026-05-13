class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        # binary search 
        L = 0 
        R = len(nums) - 1

        while L <= R:
            mid = (L + R) // 2

            if target > nums[mid]:
                L = mid + 1
            elif target < nums[mid]:
                R = mid - 1
            else: 
                # L + 1 = index 
                # R 
                return mid
        return L 