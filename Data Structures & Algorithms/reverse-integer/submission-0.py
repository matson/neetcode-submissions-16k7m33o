class Solution:
    def reverse(self, x: int) -> int:
        # just define these as is 
        MIN = (-2**31) # -2^31
        MAX = (2**31) - 1 # 2^31 - 1

        result = 0 
        # while not 0
        while x:
            # mod
            digit = int(math.fmod(x, 10))
            # divide
            x = int( x / 10)

            # cases 
            if result > MAX // 10 or (result == MAX // 10 and digit > MAX % 10):
                return 0 
            if result < MIN // 10 or (result == MIN // 10 and digit < MIN % 10):
                return 0 
            result = (result * 10) + digit 
        return result 
            


        


        