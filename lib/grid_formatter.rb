# +GridFormatter+ generates a grid for the passed in grid.
#
# Usage: GridFormatter.new(grid: [[nil, 2, 3], [2, 4, 6], [3, 6, 9]]).generate
# Output: Prints the passed in grid to the terminal in the format:
#      | 2 3 
#   - - - - - - 
#   2  | 4 6 
#   3  | 6 9 

class GridFormatter
  attr_reader :grid

  def initialize(grid:)
    @grid = grid
  end

  def format
    grid.each_with_index do |row, row_index|
      format_row(row, row_index)
    end; nil
  end

  private

  def format_row(row, row_index)
    print "- " * grid.size * 2 + "\n" if row_index == 1

    row.each_with_index do |cell, col_index| 
      print " | " if col_index == 1
      format_cell(cell, col_index)
    end

    print "\n"
  end

  def column_width(col_index, cell_length)
    grid[col_index][-1].to_s.length - cell_length + 1
  end

  def format_cell(cell, col_index)
    cell = cell.to_s
    
    column_width(col_index, cell.length).times do 
      cell.concat(" ")
    end

    print cell
  end
end
