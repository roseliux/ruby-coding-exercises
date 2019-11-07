# frozen_string_literal: true

require 'rspec'

def fibonacci(num, cache: {})
  return 1 if num <= 2
  return cache[num] if cache[num]

  cache[num] = fibonacci(num - 1, cache) + fibonacci(num - 2, cache)
end

describe 'fibonacci' do
  it 'generate a fizz buzz hash' do
    expect(fibonacci(1)).to eq(1)
    expect(fibonacci(2)).to eq(1)
    expect(fibonacci(3)).to eq(2)
    expect(fibonacci(4)).to eq(3)
    expect(fibonacci(5)).to eq(5)
    expect(fibonacci(6)).to eq(8)
    expect(fibonacci(12)).to eq(144)
  end
end
