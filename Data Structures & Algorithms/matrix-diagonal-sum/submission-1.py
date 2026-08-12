class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:

        # base case
        if not mat[0] or not mat:
            return 0 

        sum_diagonal = 0 

        # dimensions 
        rows = len(mat)

        for row in range(rows):
            # primary 
            sum_diagonal += mat[row][row]

            # secondary 
            # (1,1)
            if row != rows-1-row:
                sum_diagonal += mat[row][rows-1-row]

        return sum_diagonal









# explore 
# given matrix - return sum of matrix diagonals 
# 1 + 5 + 9 + 3 + 7 = 25 - do not double count 
# given empty matrix - return 0. 

# brainstorm 
# primary - (0,0), (1,1), (2,2)

        