require 'spec_helper'
require_relative '../solver'

RSpec.describe Solver do
  describe 'factorial' do
    it 'Calculates the factorial of a given number' do
      test = Solver.new
      fact = test.factorial(5)
      expect(fact).to eql(120)
    end

    it 'Raises an exception for negative factorials' do
      test = Solver.new
      expect { test.factorial(-2) }.to raise_error('Only positive numbers')
    end

    it 'factorial of zero is 1' do
      test = Solver.new
      fact = test.factorial(0)
      expect(fact).to eql(1)
    end
  end

  describe '#reversed' do
    it 'should return a reversed string' do
      str = Solver.new
      str1 = str.reversed('hello')
      expect(str1).to eql 'olleh'
    end
  end
end
