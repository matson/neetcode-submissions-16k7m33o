class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        # n^2 solution 
        result = [] 
        nums.sort()

        for i in range(0, len(nums)):
            if i > 0 and nums[i] == nums[i - 1]:
                continue 
            L = i + 1
            R = len(nums) - 1

            while L < R:
                # compute sum
                threeSum = nums[i] + nums[L] + nums[R]
                # if greater or less than 0 (target)
                if threeSum > 0:
                    R -= 1
                elif threeSum < 0:
                    L += 1
                else: 
                    # append the triplet
                    result.append([nums[i], nums[R], nums[L]])
                    L += 1
                    while nums[L] == nums[L - 1] and L < R:
                        L += 1


        return result 





