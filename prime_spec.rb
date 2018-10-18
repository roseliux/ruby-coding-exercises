def prime?(number)
	return false if number <= 1
	return true if number <= 3

  div = (2..number-1).find { |d| number % d == 0 }
  div.nil?
end

describe 'prime?' do
  it 'returns boolean based on if a number is a prime' do
    expect(prime?(-1)).to eq(false)
    expect(prime?(1)).to eq(false)
    expect(prime?(2)).to eq(true)
    expect(prime?(3)).to eq(true)
    expect(prime?(97)).to eq(true)
    expect(prime?(2329)).to eq(false)
  end
end
