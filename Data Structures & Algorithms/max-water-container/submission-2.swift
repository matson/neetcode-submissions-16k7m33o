class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        // two pointers 
        var maxArea = 0 
        var L = 0
        var R = heights.count - 1

        // start at both ends
        while L < R {
            // calculate the area
            // a = h * w
            let area = min(heights[L], heights[R]) * (R - L)
            maxArea = max(area, maxArea)
            if heights[L] <= heights[R] {
                L += 1
            }else{
                R -= 1
            }
        }
        return maxArea 
    }
}
