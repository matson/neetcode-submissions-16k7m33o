# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num: int) -> int:

class Solution:
    def guessNumber(self, n: int) -> int:
        # bounds 
        # starting 
        L = 1
        R = n  

        while L <= R:
            # find middle
            mid = (R + L) // 2
            # 1 - lower 
            if guess(mid) > 0:
                L = mid + 1 
            # -1  - higher 
            elif guess(mid) < 0:
                R = mid - 1
            # 0 
            else:
                return mid 
        return -1  





        