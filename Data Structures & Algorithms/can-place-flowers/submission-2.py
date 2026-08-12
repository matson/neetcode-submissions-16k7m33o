class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        
        if n == 0:
            return True  

        flowers = n 

        # we can pad the array 
        flowerbed = [0] + flowerbed + [0]
        
        for i in range(1, len(flowerbed)-1):

            if flowerbed[i] == 0 and flowerbed[i-1] == 0 and flowerbed[i+1] == 0:
                # plant 
                flowerbed[i] = 1 
                # decrement 
                flowers -= 1
                
                if flowers == 0:
                    return True 
        return False 