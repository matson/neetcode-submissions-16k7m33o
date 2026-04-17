/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
          // hashmap
        var oldToNew = [Int: Node]()
        
        func dfs(_ node: Node?) -> Node? {
        
            guard let node = node else {
                return nil
            }
            
            // if it exists
            if let existingNode = oldToNew[node.val] {
                return existingNode
            }
            
            // create clone
            var copy = Node(node.val)
            // add to hashMap
            oldToNew[node.val] = copy
            
            // go through the neighbors
            for neighbor in node.neighbors {
                if let neighborCopy = dfs(neighbor){
                    copy.neighbors.append(neighborCopy)
                }
            }
            return copy
        }
        return dfs(node)
    }

}
