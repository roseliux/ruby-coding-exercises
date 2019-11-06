# frozen_string_literal: true

require 'rspec'

def fizzbuzz?(number)
  return 'FizzBuzz' if number % 15 == 0
  return 'Buzz' if number % 5 == 0
  return 'Fizz' if number % 3 == 0

  number
end

def hashed_fizz_buzz(num)
  hash = {}

  1.upto(num).map do |element|
    hash[element] = fizzbuzz?(element)
  end

  hash
end

describe 'Hashed FizzBuzz' do
  it 'generate a fizz buzz hash' do
    final_hash = { 1 => 1, 2 => 2, 3 => 'Fizz', 4 => 4, 5 => 'Buzz', 6 => 'Fizz', 7 => 7, 8 => 8,
                   9 => 'Fizz', 10 => 'Buzz', 11 => 11, 12 => 'Fizz', 13 => 13, 14 => 14, 15 => 'FizzBuzz',
                   16 => 16, 17 => 17, 18 => 'Fizz', 19 => 19, 20 => 'Buzz', 21 => 'Fizz', 22 => 22, 23 => 23,
                   24 => 'Fizz', 25 => 'Buzz' }

    expect(hashed_fizz_buzz(25)).to eq(final_hash)
  end
end
