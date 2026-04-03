class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        // brute force
        // O(n^2)
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count{
                if matrix[i][j] == target {
                    return true
                }
            }
        }
        return false 
    }
}
