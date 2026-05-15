class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
         # binary search on k 
        # 1 banana
        L = 1
        # the max bananas - in piles rate 
        R = max(piles)

        while L < R: 
            total = 0 
            mid = (R + L ) // 2

            for pile in piles: 
                # pile / k rounded up. 
                # (pile + k - 1) // k
                total += (pile + mid - 1) // mid 

            if total > h: 
                # rate needs to be greater 
                L = mid + 1 
            elif total <= h: 
                # rate can be lower
                R = mid 
        return L 

