require 'rspec'
require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  # tests for factorial method
  it 'get factorial of number 6' do
    result = @solver.factorial(6)
    expect(result).to eq(720)
  end
  it 'get factorial of number 0' do
    result = @solver.factorial(0)
    expect(result).to eq(1)
  end
  it 'raise an exception for negative number' do
    expect { @solver.factorial(-1) }.to raise_error(RuntimeError, 'Argument cannot be negative')
  end

  # test for reverse method
  it 'reverse the string Mohamed' do
    result = @solver.reverse('Mohamed')
    expect(result).to eq('demahoM')
  end
  it 'raise an exception if sent integer argument' do
    result = @solver.reverse(1)
    expect(result).to eq('Argument cannot be an integer')
  end
  
  # test for fizzbuzz method