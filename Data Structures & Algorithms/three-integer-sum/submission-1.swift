class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>()
        // brute force
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count{
                    if nums[i] + nums[j] + nums[k] == 0 {
                        let triplet = [nums[i], nums[j], nums[k]].sorted()
                        result.insert(triplet)
                    }
                }
            }
        }
        return Array(result)
    }
}
