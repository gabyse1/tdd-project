require_relative '../solver'

Describe Solver do
  context '#Factorial method' do
    it 'returns the factorial of a positive integer' do
      factorial = factorial(5)
      expect(factorial).to eql 120
    end

    it 'returns the factorial of zero' do
      factorial = factorial(0)
      expect(factorial).to eql 0
    end

    it 'throws an argument error if the input parameter is a negative integer' do
      expect { factorial(-5) }.to raise_exception ArgumentError
    end

    it 'throws an argument error if the input parameter is a string' do
      expect { factorial('5') }.to raise_exception ArgumentError
    end
  end
end
