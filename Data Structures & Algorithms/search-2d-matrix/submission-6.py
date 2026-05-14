class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # binary search 
        # for each row 

        for i in range(len(matrix)):

            L = 0 
            R = len(matrix[0]) - 1

            while L <= R: 
                mid = ( R + L ) // 2
                if target > matrix[i][mid]:
                    L = mid + 1 
                elif target < matrix[i][mid]:
                    R = mid - 1
                else: 
                    return True 
        return False 


        