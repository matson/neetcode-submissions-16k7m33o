class Solution:
    def mySqrt(self, x: int) -> int:

        L = 1
        R = x
        square = 1

        while L <= R:
            mid = (R + L) // 2

            if mid * mid > x: 
                R = mid - 1
            elif mid * mid < x:
                L = mid + 1 
            else:
                return mid  
        return R 


        