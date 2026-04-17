class Graph {

    // define hashmap
    private var adjList = [Int: Set<Int>]()

    func addEdge(_ src: Int, _ dst: Int) {
        if adjList[src] == nil{
            adjList[src] = Set<Int>()
        }
        if adjList[dst] == nil {
            adjList[dst] = Set<Int>()
        }
        // if it exists 
        adjList[src]!.insert(dst)
    }

    func removeEdge(_ src: Int, _ dst: Int) -> Bool {
        // check if they exist first - 
        guard let srcSet = adjList[src], srcSet.contains(dst) else{
            return false 
        }
        // remove the edge
        adjList[src]!.remove(dst)
        return true 
    }

    func hasPath(_ src: Int, _ dst: Int) -> Bool {
        // dfs on this 
        var visited = Set<Int>()
        return dfs(src, dst, &visited)
        

    }

    func dfs(_ node: Int, _ dst: Int, _ visited: inout Set<Int>) -> Bool {
        // start with base cases
        if node == dst {
            return true 
        }

        visited.insert(node)

        // dfs on the neighbors 
        for neighbor in adjList[node]!{
            if !visited.contains(neighbor){
                if dfs(neighbor, dst, &visited){
                    return true 
                }
            }

        }
        return false 
    }
}
