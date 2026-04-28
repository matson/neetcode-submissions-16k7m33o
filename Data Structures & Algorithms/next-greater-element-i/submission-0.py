class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        
        # make dict of nums1
        dictNum = {}
        for i, num in enumerate(nums1):
            if num not in dictNum:
                dictNum[num] = i 

        # result is the size of nums1
        result = [-1] * len(nums1)
        stackM = []
        
        # one pass 
        for i in range(len(nums2)):
            curr = nums2[i]
            while stackM and curr > stackM[-1]:
                val = stackM.pop()
                index = dictNum[val]
                result[index] = curr 
            if curr in dictNum:
                stackM.append(curr)
        return result 





        