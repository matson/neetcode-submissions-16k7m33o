class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        # with stack 
        # O(n) 

        stack = [] 
        result = [0] * len(temperatures)

        for i in range(len(temperatures)):
            # while stack and stack last is less than current
            while stack and temperatures[i] > temperatures[stack[-1]]:
                # get last value (index)
                val = stack.pop() 
                # set at index
                result[val] = i - val
            # append indices instead 
            stack.append(i)

        return result 
            



        