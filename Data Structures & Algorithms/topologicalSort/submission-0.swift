class Solution {
    func topologicalSort(_ n: Int, _ edges: [[Int]]) -> [Int] {
        // start with building the adjList
        
        let adjList = buildList(edges, n)
        var topSort: [Int] = []
        var visited = Set<Int>()
        var path = Set<Int>()
        var hasCycle = false

        // go through each node
        for i in 0..<n{
            // dfs on each node 
            dfs(i, &visited, &path, &hasCycle, adjList, &topSort)
        }

        if hasCycle{
            return [] 
        }

        // return reversed list 
        return topSort.reversed()
    }

    func dfs(_ src: Int, _ visited: inout Set<Int>, _ path: inout Set<Int>, _ hasCycle: inout Bool, _ adjList: [Int: [Int]], _ topSort: inout [Int]){

        // base cases
        if hasCycle{
            return 
        }

        if path.contains(src){
            hasCycle = true
            return 
        }

        if visited.contains(src){
            return 
        }

        // dfs 
        visited.insert(src)
        path.insert(src)

        for neighbor in adjList[src]!{
            dfs(neighbor, &visited, &path, &hasCycle, adjList, &topSort)
        }
        path.remove(src)
        topSort.append(src)
    }

    func buildList(_ edges: [[Int]], _ nodes: Int) -> [Int: [Int]]{
        var adjList = [Int: [Int]]()
        
        // add the nodes 
        for i in 0..<nodes{
            adjList[i] = [] 
        }

        // add edges 
        for edge in edges{
            let src = edge[0]
            let dst = edge[1]
            adjList[src]!.append(dst)
        }

        return adjList 
    }
}
