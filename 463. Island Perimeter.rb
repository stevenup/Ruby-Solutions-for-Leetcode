# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  rows, cols = grid.size, grid[0].size
  p = 0
  (0...rows).each do |row|
    (0...cols).each do |col|
      if grid[row][col] == 1
        cell_p = 4
        cell_p -= 1 if col-1 >= 0 && col-1 <= cols-1 && grid[row][col-1] == 1
        cell_p -= 1 if row-1 >= 0 && row-1 <= rows-1 && grid[row-1][col] == 1
        cell_p -= 1 if col+1 >= 0 && col+1 <= cols-1 && grid[row][col+1] == 1
        cell_p -= 1 if row+1 >= 0 && row+1 <= rows-1 && grid[row+1][col] == 1
        p += cell_p
      end
    end
  end
  p
end

p island_perimeter([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]])
# p island_perimeter([[1]])
