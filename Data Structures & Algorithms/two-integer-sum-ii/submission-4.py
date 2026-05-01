class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        # two pointer 
        L = 0 
        R = len(numbers) - 1

        while L < R:
            if numbers[R] + numbers[L] > target:
                R -= 1
            elif numbers[R] + numbers[L] < target:
                L += 1
            else: 
                # equal target 
                return [L + 1, R + 1]
        return [] 

       

        