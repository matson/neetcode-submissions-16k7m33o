class Solution:
    def hammingWeight(self, n: int) -> int:
        count = 0 
        # while we have a number 
        while n > 0:
            # if there is a one
            if n & 1 == 1:
                # increment count 
                count += 1
            # shift by 1 to the right 
            n = n >> 1
        return count 
        