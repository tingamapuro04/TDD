class Solver
  def factorial(num)
    return 1 if num.zero?
    raise 'Only positive numbers' if num.negative?

    i = num - 1
    k = num

    while i.positive?
      k *= i
      i -= 1
    end
    k
  end

  def reversed(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num % 5).zero? && (num % 3).zero?
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
