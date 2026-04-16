class Solution {
    func shortestPathBinaryMatrix(_ grid: inout [[Int]]) -> Int {
        let ROWS = grid.count
        let COLS = grid[0].count
        
        // Check if starting or ending cell is blocked
        if grid[0][0] == 1 || grid[ROWS-1][COLS-1] == 1 {
            return -1
        }

        // visted grid
        var visited = Array(repeating: Array(repeating: 0, count: COLS), count: ROWS)
        // queue - array of tuples
        var queue: [(Int, Int, Int)] = []
        // starting point
        queue.append((0,0,1))
        visited[0][0] = 1
        
        // var pathLength = 0
        while !queue.isEmpty{
            let (r,c, length) = queue.removeFirst()
            // base cases
            if r == ROWS - 1 && c == COLS - 1{
                // we got to the cell!
                return length
            }
            
            // boilder plate
            // 8 directions
            let directions = [[1,0], [0,1], [-1,0], [0,-1], [1,1], [1,-1], [-1,1], [-1,-1]]
            for dir in directions{
                let dr = r + dir[0]
                let dc = c + dir[1]
                
                if dr >= 0 && dr < ROWS && dc >= 0 && dc < COLS && visited[dr][dc] == 0 && grid[dr][dc] == 0 {
                    queue.append((dr, dc, length + 1))
                    visited[dr][dc] = 1
                }
            }
        }
        return -1
    }
}