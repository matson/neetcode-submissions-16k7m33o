class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        // for each row do binary search
        for i in 0..<matrix.count{
            
            var left = 0
            var right = matrix[0].count - 1
            
            // alg
            while left <= right {
                
                // calculate middle
                let mid = (left + right) / 2
                
                if target > matrix[i][mid] {
                    left += 1
                }else if target < matrix[i][mid] {
                    right -= 1
                }else{
                    return true
                }
            }
            
        }
        return false
    }
}
