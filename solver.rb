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
      k*= i
      i-=1
    end
    k
  end

  def reversed(string)
    string.reverse
  end


end
