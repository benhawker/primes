# +GridGenerator+ generates a grid for the passed in array of integers.
#
# Usage: GridGenerator.new(primes: [2, 3, 5]).generate
# Output: [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]

class GridGenerator
  attr_reader :primes, :grid

  def initialize(primes:)
    @primes = primes
    @grid = Array.new(primes.size+1) { Array.new(primes.size+1) }
  end

  def generate
    fill_header_row
    fill_multiplications
    fill_side_column
    grid
  end

  private

  def fill_header_row
    grid[0].map!.with_index do |cell, col_index|
      next if col_index == 0
      primes[col_index-1]
    end
  end

  def fill_side_column
    primes.each_with_index do |p, i|
      grid[i+1][0] = p
    end
  end

  def fill_multiplications
    0.upto(primes.size) do |row_index|
      next if row_index == 0 # Skip 'header' row
      
      grid[row_index].map!.with_index do |row, col_index|
        next if col_index == 0 # Skip 'header' col
        grid[0][col_index] * grid[0][row_index]
      end
    end
  end    
end