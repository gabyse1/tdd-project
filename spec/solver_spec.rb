require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end
  context '#Factorial method' do
    it 'returns the factorial of a positive integer' do
      factorial = @solver.factorial(5)
      expect(factorial).to eql 120
    end

    it 'returns the factorial of zero' do
      factorial = @solver.factorial(0)
      expect(factorial).to eql 1
    end

    it 'throws an argument error if the input parameter is a negative integer' do
      expect { @solver.factorial(-5) }.to raise_exception ArgumentError
    end

    it 'throws an argument error if the input parameter is a string' do
      expect { @solver.factorial('5') }.to raise_exception ArgumentError
    end
  end

  context '#reverse method' do
    it 'throws an argument error if the input parameter is not a string' do
      expect { @solver.reverse(15) }.to raise_exception ArgumentError
    end

    it 'return the input string in reverse order' do
      reverse_string = @solver.reverse('hello')
      expect(reverse_string).to eql 'olleh'
    end
  end

  context '#fizzbuzz method' do
    it 'throws an argument error if the input parameter is not an integer' do
      expect { @solver.fizzbuzz('50') }.to raise_exception ArgumentError
    end

    it 'returns "fizz" if the input number is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end

    it 'returns "buzz" if the input number is divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end

    it 'returns "fizzbuzz" if the input number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eql 'fizzbuzz'
    end

    it 'returns the input number as a string if it is not divisible by 3, 5 and 15' do
      expect(@solver.fizzbuzz(7)).to eql '7'
    end
  end
end
