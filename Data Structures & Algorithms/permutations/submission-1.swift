class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        // iterative way 
        var perms: [[Int]] = [[]]

        for n in nums{
            var addPerm: [[Int]] = []
            for p in perms{
                for i in 0..<p.count + 1{
                    // copy and add
                    var pCopy = p 
                    pCopy.insert(n, at: i)
                    addPerm.append(pCopy)
                }
            }
            // add to final perm list 
            perms = addPerm
        }
        return perms
    }

}
