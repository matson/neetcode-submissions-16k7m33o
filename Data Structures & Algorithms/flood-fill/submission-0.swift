class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        // boundaries
        let ROWS = image.count
        let COLS = image[0].count
        // original color
        let originalColor = image[sr][sc]
        
        if (originalColor == color){
            return image
        }
        
        // this is extremely similar template to DFS
        func dfs(_ r: Int, _ c: Int) {
            // base case here:
            if (r < 0 || r >= ROWS || c < 0 || c >= COLS || image[r][c] != originalColor){
                return
            }
            
            // mark it
            image[r][c] = color
            
            // dfs all directions
            dfs(r + 1, c)
            dfs(r - 1, c)
            dfs(r, c + 1)
            dfs(r, c - 1)
        }
        
        dfs(sr, sc)
        return image
    
    }
}
