class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:

            # top   # left  right 
                    # X X X
                    # X x X
                    # X X x
            # bottom # X X X

            result = [] 

            if not matrix or not matrix[0]:
                return result 

            # dimensions 
            ROWS = len(matrix)
            COLS = len(matrix[0]) 

            top = 0 
            left = 0
            right = COLS - 1 
            bottom = ROWS - 1

            while top <= bottom and left <= right:
                # left to right 
                # [0,0] [0,1] [0,2]
                for col in range(left, right+1):
                    result.append(matrix[top][col])
                
                # increment 
                top += 1 

                # top to bottom 
                # [0,2] [1,2] [2,2]
                for row in range(top,bottom+1):
                    result.append(matrix[row][right])
                
                # decrement 
                right -= 1

                # check if we have rows 
                # right to left 
                if top <= bottom:
                    # [2,1] [2,0]
                    for col in range(right, left-1, -1):
                        result.append(matrix[bottom][col])
                    
                    # decrement 
                    bottom -= 1 
                
                # check if we have columns 
                # bottom to top 
                if left <= right:
                    # [1,0] 
                    for row in range(bottom, top-1, -1):
                        result.append(matrix[row][left])
                    
                    # increment
                    left += 1
            
            return result 
            
        



        