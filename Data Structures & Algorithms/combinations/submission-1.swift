class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {

        var combos: [[Int]] = []
        var curComb: [Int] = []
        helper(n, k, 1, &curComb, &combos)
        return combos
    }

    func helper(_ n: Int, _ k: Int, _ i: Int, _ curComb: inout [Int], _ combos: inout [[Int]]){
    
    // base - match length
    if curComb.count == k {
        combos.append(curComb)
        return 
    }
    
    // out of bounds
    if i > n {
        return
    }
    
    // decisions
    // append i
    curComb.append(i)
    helper(n, k, i+1, &curComb, &combos)
    curComb.removeLast()
    
    // do not append i
    helper(n, k, i+1, &curComb, &combos)
}
}
