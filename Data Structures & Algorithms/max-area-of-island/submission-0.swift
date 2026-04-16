class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
            var ROWS = grid.count
            var COLS = grid[0].count
            var visited = Set<[Int]>()
            var grid = grid
    
        // key for doing these types of problems -
        // go through each board piece - if it's a one we run dfs on that
        // get the max area
        
        func dfs(_ r: Int, _ c: Int)-> Int{
                if (r < 0 || c < 0 || c == COLS || r == ROWS || grid[r][c] == 0 || visited.contains([r,c])){
                    return 0
                }
                
                // add to hashset
                visited.insert([r,c])
                
                // four directions
                return 1 + dfs(r+1, c) + dfs(r-1, c) + dfs(r, c+1) + dfs(r, c-1)
            }
            
            var area = 0
            for r in 0..<ROWS{
                for c in 0..<COLS{
                    area = max(area, dfs(r,c))
                }
            }
            
            return area 
    }
}
