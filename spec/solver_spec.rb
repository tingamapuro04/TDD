require 'spec_helper'
require_relative '../solver.rb'

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

  describe '#fizzbuzz' do
    before (:each) do
      @solver = Solver.new
    end
    it 'returns fizz if N is divisible by 3' do
      result = @solver.fizzbuzz(6)
      expect(result).to eql 'fizz'
    end

    it 'returns buzz if N is divisible by 5' do
      result = @solver.fizzbuzz(10)
      expect(result).to eql 'buzz'
    end

    it 'returns fizzbuzz if N is divisible by both 5 and 3' do
      result = @solver.fizzbuzz(15)
      expect(result).to eql 'fizzbuzz'
    end

    it 'returns N as a string for other nums' do
      result = @solver.fizzbuzz(7)
      expect(result).to eql '7'
    end
  end
end
