class Solver

  def factorial(num)
    raise ArgumentError unless num.is_a?(Integer) && num >= 0
    return 1 if num == 0
    return num * factorial(num - 1)
  end

  def reverse(str)
    raise ArgumentError if !str.is_a?(String)
    return str.reverse
  end

  def fizzbuzz(num)
    raise ArgumentError unless num.is_a?(Integer)
    return 'fizzbuzz' if (num % 15) == 0
    return 'buzz' if (num % 5) == 0
    return 'fizz' if (num % 3) == 0
    num.to_s
  end
end