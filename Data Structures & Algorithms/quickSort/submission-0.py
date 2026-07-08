# Definition for a pair.
# class Pair:
#     def __init__(self, key: int, value: str):
#         self.key = key
#         self.value = value
class Solution:

    def quickSort(self, pairs: List[Pair]) -> List[Pair]:

        return self.quick_sort_helper(pairs, 0, len(pairs) - 1)

    def quick_sort_helper(self, pairs, start, end):

        # base case 
        if (end - start + 1) <= 1:
            return pairs 

        # pivot and left pointer 
        pivot = pairs[end]
        left = start

        # compare and swap 
        for i in range(start, end):
            if pairs[i].key < pivot.key:
                tmp = pairs[left]
                pairs[left] = pairs[i]
                pairs[i] = tmp 
                left += 1 

        # swap pivot and left 
        pairs[end] = pairs[left]
        pairs[left] = pivot 


        # quick sort left 
        self.quick_sort_helper(pairs, start, left - 1)

        # quick sort right 
        self.quick_sort_helper(pairs, left + 1, end)

        return pairs 