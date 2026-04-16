class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        // dfs
        // boundaries
        var ROWS = grid.count
        var COLS = grid[0].count
        var grid = grid
        var islandCount = 0
        
        func dfs(_ r: Int, _ c: Int){
            // base case
            if (r < 0 || c < 0 || r == ROWS || c == COLS || grid[r][c] == "0"){
                return
            }
            
            grid[r][c] = "0"
            // four directions
            dfs(r+1, c)
            dfs(r-1, c)
            dfs(r, c+1)
            dfs(r, c-1)
        }
        
        for r in 0..<ROWS{
            for c in 0..<COLS{
                if(grid[r][c] == "1"){
                    // count island
                    // destroy it
                    islandCount += 1
                    dfs(r, c)
                    
                }
            }
        }
        return islandCount
        
    }
}
