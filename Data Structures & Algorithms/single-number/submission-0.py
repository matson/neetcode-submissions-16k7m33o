class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        
        dictN = {}
        # create dict 
        for n in nums:
            if n in dictN:
                dictN[n] += 1
            else:
                dictN[n] = 1

        for key, v in dictN.items():
            if v == 1:
                return key 
        return -1