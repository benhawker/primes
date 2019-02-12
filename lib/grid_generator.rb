# +GridGenerator+ generates a grid for the passed in array of integers.
#
# Usage: GridGenerator.new(primes: [2, 3, 5]).generate
# Output: [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]

class GridGenerator
  attr_reader :primes

  def initialize(primes:)
    @primes = primes
  end

  def generate
    arr = []
    arr << header_row

    primes.length.times do |i|
      arr << other_row(i)
    end

    arr
  end

  private

  def header_row
    primes.dup.unshift(nil)
  end

  def other_row(row_index)
    arr = []

    primes.each_with_index do |prime, col_index|
      if col_index == 0
        arr << primes[row_index] # Sidebar values
      end
      arr << (primes[col_index] * primes[row_index])
    end

    arr
  end
end