class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result: [Int] = []
        // brute force
        // O(n^2)
        for i in 0..<temperatures.count {
            var found = false
            for j in i+1..<temperatures.count{
                if temperatures[i] < temperatures[j]{
                    // find index difference
                    let days = j - i
                    result.append(days)
                    found = true
                    // leave
                    break
                }
            
            }
            if !found{
                result.append(0)
            }
            
        }
        return result
    }
}
