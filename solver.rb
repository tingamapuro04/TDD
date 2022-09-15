class Solver
  def factorial(n)
    if n == 0
      return 1
    elsif n < 0
      raise 'Only positive numbers'
    end

    i = n - 1
    k = n

    while i > 0 do
      k *= i
      i -= 1
    end
    k
  end

  def reversed(string)
    string.reverse
  end

  def fizzbuzz(n)
    if (n % 5 == 0 && n % 3 == 0)
      return 'fizzbuzz'
    elsif (n % 3 == 0)
      return 'fizz'
    elsif (n % 5 == 0)
      return 'buzz'
    else
      return n.to_s
    end
  end
end

solver = Solver.new
puts solver.fizzbuzz(6)
