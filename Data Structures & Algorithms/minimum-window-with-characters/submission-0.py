class Solution:
    def minWindow(self, s: str, t: str) -> str:
        # brute force 
        substring = None

        dictT = {}
        for char in t:
            # build dict T 
            dictT[char] = dictT.get(char, 0) + 1
        
        for i in range(len(s)):
            # each substring 
            dictS = {} 
            
            for j in range(i, len(s)):
                dictS[s[j]] = dictS.get(s[j], 0) + 1

                valid = True
                
                for char in dictT:
                    if dictS.get(char, 0) < dictT[char]:
                        valid = False
                        break
                
                if valid: 
                    # build 
                    curr = s[i:j+1]
                    # compare 
                    if substring is None or len(curr) < len(substring):
                        substring = curr

        return substring if substring else ""
    

        

                





        