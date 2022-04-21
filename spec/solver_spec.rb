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
      reverseString = @solver.reverse('hello')
      expect(reverseString).to eql 'olleh'
    end
  end 
end
