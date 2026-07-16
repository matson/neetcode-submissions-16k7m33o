class Solution:
    def countPaths(self, grid: List[List[int]]) -> int:

        def dfs(grid, r, c, visit):

            # dimensions 
            ROWS = len(grid)
            COLS = len(grid[0])

            # base cases 
            if min(r,c) < 0 or r == ROWS or c == COLS or (r,c) in visit or grid[r][c] == 1:
                # add nothing 
                return 0

            # add to count 
            if r == ROWS - 1 and c == COLS - 1:
                return 1 

            # add to visit 
            visit.add((r,c))

            count = 0 
            # four directions 
            count += dfs(grid, r+1, c, visit)
            count += dfs(grid, r-1, c, visit)
            count += dfs(grid, r, c+1, visit)
            count += dfs(grid, r, c-1, visit)

            # backtrack 
            visit.remove((r,c))

            return count 
        # call 
        return dfs(grid, 0, 0, set())
