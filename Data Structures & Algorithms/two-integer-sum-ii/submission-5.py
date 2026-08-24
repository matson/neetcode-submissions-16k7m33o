class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        # given sorted input
        # explore: 
        # one valid solution 
        # given: [1,2,3,4] - target = 3
        # [1,2]
        # two pointers 

        L = 0 
        R = len(numbers) - 1

        while L < R:

            total = numbers[L] + numbers[R]

            if target == total:
                return [L+1, R+1]

            elif target > total:
                L += 1
            else:
                # total greater than 
                R -= 1




        