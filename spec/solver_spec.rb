require 'spec_helper'

RSpec.describe Solver do
  describe 'factorial' do
    it 'Calculates the factorial of a given number' do
      test = Solver.new
      fact = test.factorial(5)
      expect(fact).to eql(120)
    end

    it 'Raises an exception for negative factorials' do
      test = Solver.new
      fact = test.factorial(-2)
      expect { fact }.to raise_error('Only positive numbers')
    end

    it 'factorial of zero is 1' do
      test = Solver.new
      fact = test.factorial(0)
      expect(fact).to eql(1)
    end
  end
end