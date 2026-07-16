class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        
        ROWS = len(grid)
        COLS = len(grid[0])
        
        def dfs(grid, r, c, visit):
            
            # dim.
            ROWS = len(grid)
            COLS = len(grid[0])

            # base cases 
            # out of bounds 
            # hit water 
            # in visit 
            if r < 0 or r == ROWS or c < 0 or c == COLS or grid[r][c] == 0 or (r,c) in visit:
                return 0 

            # add to visited 
            visit.add((r,c))

            # run dfs in all directions 
            return (1 +  dfs(grid, r+1, c, visit) +
            dfs(grid, r-1, c, visit) +
            dfs(grid, r, c+1, visit) +
            dfs(grid, r, c-1, visit))

        max_area = 0 
        for r in range(ROWS):
            for c in range(COLS):
                max_area = max(max_area, dfs(grid, r, c, set()))
        return max_area



# explore 
# given matrix 
# islands are group connected 1's 

# brainstorm 
# use matrix dfs - start with an island then branch out to other 1's
# save those ones and return the max 

        