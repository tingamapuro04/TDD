require 'spec_helper'
require_relative '../solver'

RSpec.describe Solver do
  describe '#fizzbuzz' do
    it 'returns fizz if N is divisible by 3' do
      @solver = Solver.new
      result = @solver.fizzbuzz(6)
      expect(result).to eql 'fizz'
    end

    it 'returns buzz if N is divisible by 5' do
      @solver = Solver.new
      result = @solver.fizzbuzz(10)
      expect(result).to eql 'buzz'
    end

    it 'returns fizzbuzz if N is divisible by both 5 and 3' do
      @solver = Solver.new
      result = @solver.fizzbuzz(15)
      expect(result).to eql 'fizzbuzz'
    end

    it 'returns N as a string for other nums' do
      @solver = Solver.new
      result = @solver.fizzbuzz(7)
      expect(result).to eql '7'
    end
  end
end
