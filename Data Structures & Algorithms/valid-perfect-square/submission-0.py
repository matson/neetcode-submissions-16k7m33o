class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        L = 1
        R = num

        while L <= R: 
            mid = (R + L) // 2
            
            if mid * mid < num:
                L = mid + 1
            elif mid * mid > num:
                R = mid - 1
            else: 
                return True  
        return False 
        