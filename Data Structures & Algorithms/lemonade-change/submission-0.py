class Solution:
    def lemonadeChange(self, bills: List[int]) -> bool:

        # 5$ lemonade 
        # 5, 10 or 20 bills
        
        five = 0 
        ten = 0 

        for bill in bills:

            # equal case - handed 5 
            if bill == 5:
                five += 1

            # handed 10 
            elif bill == 10:
                # if we have 5's
                if five > 0:
                    five -= 1
                    ten += 1
                else:
                    return False 
            # handed a 20 
            else:
                # if we have 5's and 10's 
                if five > 0 and ten > 0:
                    ten -= 1
                    five -= 1
                # only five's 
                elif five >= 3:
                    five -= 3 
                else:
                    # no fives but tens or neither 
                    return False 
        return True 

        