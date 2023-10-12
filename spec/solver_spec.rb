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
  it 'if n%3 = 0 return fizz' do
    result = @solver.fizzbuzz(6)
    expect(result).to eq('fizz')
  end
  it 'if n%5 = 0 return buzz' do
    result = @solver.fizzbuzz(10)
    expect(result).to eq('buzz')
  end
  it 'if n%5 = 0 & n%3 = 0 return fizzbuzz' do
    result = @solver.fizzbuzz(60)
    expect(result).to eq('fizzbuzz')
  end
  it 'if n%5 != 0 & n%3 != 0 return the number as string' do
    result = @solver.fizzbuzz(14)
    expect(result).to eq('14')
  end
end