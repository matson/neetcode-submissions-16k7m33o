class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        // build the list 
        let adjList = buildList(numCourses, prerequisites)

        var schedule = [Int]()
        var visited = Set<Int>()
        var path = Set<Int>()
        var hasCycle = false 

        // go through the nodes
        for i in 0..<numCourses{
            if !dfs(adjList, i, &visited, &path, &hasCycle, &schedule) {
                return false
            }
        }

        return true 

    }

    func dfs(_ adjList: [Int: [Int]], _ node: Int, _ visited: inout Set<Int>, _ path: inout Set<Int>, _ hasCycle: inout Bool,  _ schedule: inout [Int]) -> Bool{

        // base case 
        if hasCycle{
            return false 
        }

        if path.contains(node){
            hasCycle = true
            return false 
        }

        if visited.contains(node){
            return true 
        }

        // add 
        visited.insert(node)
        path.insert(node)

        for neighbor in adjList[node]!{
            if !dfs(adjList, neighbor, &visited, &path, &hasCycle, &schedule) {
                return false
            }
        }
        path.remove(node)
        schedule.append(node)
        return true 
    }

    func buildList(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int: [Int]]{
        // build the list 
        var adjList = [Int: [Int]]()

        for i in 0..<numCourses{
            adjList[i] = [] 
        }

        for edge in prerequisites{
            let src = edge[0]
            let dst = edge[1]
            adjList[src]!.append(dst)
        }

        return adjList 
    }
}
