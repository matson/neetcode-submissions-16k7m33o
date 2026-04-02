class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        // brute force
        var maxArea = 0
        
        // O(n^2)
        for i in 0..<heights.count{
            for j in i+1..<heights.count{
                let width = j - i
                let h = min(heights[i], heights[j])
                let area = h * width
                maxArea = max(maxArea, area)
            }
        }
        print(maxArea)
        return maxArea
    }
}
