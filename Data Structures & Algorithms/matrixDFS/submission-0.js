class Solution {
    /**
     * @param {number[][]} grid
     * @returns {number}
     */
    countPaths(grid) {
        const ROWS = grid.length;
    const COLS = grid[0].length;
    let visited = Array.from({ length: ROWS }, () => Array(COLS).fill(0));
    
    function dfs(r, c) {
        // Base cases: out of bounds, obstacle, or visited
        if (r < 0 || c < 0 || r === ROWS || c === COLS || 
            grid[r][c] === 1 || visited[r][c] === 1) {
            return 0;
        }
        
        // Reached destination
        if (r === ROWS - 1 && c === COLS - 1) {
            return 1;
        }
        
        // Mark current cell as visited
        visited[r][c] = 1;
        
        // Explore all four directions
        let count = 0;
        count += dfs(r + 1, c);
        count += dfs(r - 1, c);
        count += dfs(r, c + 1);
        count += dfs(r, c - 1);
        
        // Backtrack by unmarking current cell
        visited[r][c] = 0;
        
        return count;
    }
    
    return dfs(0, 0);
    }
}

