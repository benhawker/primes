# +PrimeGenerator+ generates prime numbers up to the limit specified.
#
# Usage: PrimeGenerator.new(limit: 10).generate
# Output: [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

class PrimeGenerator
  attr_reader :limit

  def initialize(limit: 10)
    @limit = limit
  end

  def generate
    primes = []
    number = 2
    
    until primes.length == limit do
      if is_prime?(primes, number)
        primes << number
      end
      number += 1
    end

    return primes
  end

  private

  def is_prime?(primes, number)
    primes.each do |prime|
      return false if number % prime == 0
    end
    return true
  end

end