class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        # dict 
        dictP = { 0 : 1}
        result = 0
        curSum = 0

        # need formula 
        for n in nums:
            curSum += n 
            # left_pre = right_pre - k 
            diff = curSum - k

            result += dictP.get(diff, 0)
            # add to dictionary 
            dictP[curSum] = 1 + dictP.get(curSum, 0)
        return result 



        