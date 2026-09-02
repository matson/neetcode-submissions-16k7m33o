class Solution:
    def orangesRotting(self, grid: List[List[int]]) -> int:
        queue = deque()
        time = 0 
        fresh = 0 

        # check if we have a matrix 
        if not grid or not grid[0]:
            return -1 
        
        # dimensions 

        ROWS = len(grid) 
        COLS = len(grid[0])
        directions = [(0,1), (0,-1), (1,0), (-1,0)] # (dr, dc)

        for row in range(ROWS):
            for col in range(COLS):
                # count 1's 
                if grid[row][col] == 1:
                    fresh += 1
                # if rotten fruit 
                if grid[row][col] == 2:
                    # append tuple 
                    queue.append((row,col))

        if fresh == 0:
            return 0 

        # increment time somewhere 
        # go through the queue for each rotten fruit 
        while queue: 
            for _ in range(len(queue)):
                # pop each 
                coordinate = queue.popleft()
                # check each dir 
                for dr, dc in directions:
                    # get new locations  
                    new_row = dr + coordinate[0]
                    new_col = dc + coordinate[1] 

                    # boundary check 
                    if 0 <= new_row < ROWS and 0 <= new_col < COLS and grid[new_row][new_col] == 1:
                        # valid neighbor - 1's and in bounds 
                        # we can turn them into rotten fruits
                        # then we append them  
                        grid[new_row][new_col] = 2 
                        fresh -= 1
                        queue.append((new_row, new_col))
            time += 1 

        if fresh > 0:
            return -1
        
        return time - 1 