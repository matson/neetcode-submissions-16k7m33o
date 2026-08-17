class Solution:
    def longestPalindrome(self, s: str) -> int:
        # need to build the strings 
        # build dict

        mappings = {}
        total = 0

        for char in s:
            mappings[char] = mappings.get(char,0) + 1
        print(mappings)
        for key, value in mappings.items():
            # if an even 
            if value % 2 == 0:
                total += value 
            # odds 
            elif value % 2 == 1 and value != 1:
                total += value - 1 

        # if there is one left 
        if len(s) > total:
            total += 1 

        return total 
  
        # total for c:
        # value of even - all of it contributes to length 
        # value of odd - 5 - can use 4 
        # value of odd - 7 - can use 6
        # value of odd - 9 - can use 8 
        # value of odd - 1 - can use 1 
        # total = even + 1 odd = 4 + 2 + 1
