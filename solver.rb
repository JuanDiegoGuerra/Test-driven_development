class Solver
  def factorial(num)
    if num.zero?
      return 1
    elsif num == 1
      return num
    elsif num.negative?
      raise 'Argument cannot be negative'
    end

    num * factorial(num - 1)
  end

  def reverse(word)
    return 'Argument cannot be an integer' unless word.is_a?(String)

    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end

# console tests

solve = Solver.new
facto = solve.factorial(9)
puts facto

test = solve.reverse('Hafizullah')
puts test

Ns = solve.fizzbuzz(15)
puts Ns
