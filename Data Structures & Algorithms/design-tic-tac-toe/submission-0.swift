class TicTacToe {

    private var board: [[Int]]
    private var n: Int 

    init(_ n: Int) {
        self.n = n
        self.board = Array(repeating: Array(repeating: 0, count: n), count: n)
    }

    func move(_ row: Int, _ col: Int, _ player: Int) -> Int {
        // so, we start by marking the board 
        board[row][col] = player 
        // win check logic

        if checkRow(row, player) ||
        checkCol(col, player) ||
        (row == col && checkDiagonal(player)) ||
        (col == n - row - 1 && checkAntiDiagonal(player)){
            return player // won 
        }
        return 0 
    }

    func checkAntiDiagonal(_ player: Int) -> Bool{
        for row in 0..<n{
            if board[row][n-row-1] != player {
                return false 
            }
        }
        return true 
    }
    func checkDiagonal(_ player: Int) -> Bool{
        for col in 0..<n{
            if board[col][col] != player{
                return false 
            }
        }
        return true 
    }

    func checkCol(_ col: Int, _ player: Int) -> Bool {
        for row in 0..<n{
            if board[row][col] != player{
                return false 
            }
        }
        return true 
    }

    func checkRow(_ row: Int, _ player: Int) -> Bool{
        for col in 0..<n{
            if board[row][col] != player{
                return false // did not fill entire row 
            }
        }
        return true 
    }
}
