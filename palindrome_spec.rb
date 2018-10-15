require 'rspec'

def palindrome?(str)
  reversed_str = str.reverse

  reversed_str.downcase == str.downcase
end

describe 'palindrome?' do
  it 'returns boolean based on if a str is a palindrome' do
    expect(palindrome?('Mom')).to eq(true)
    expect(palindrome?('Solos')).to eq(true)
    expect(palindrome?('Radar')).to eq(true)
    expect(palindrome?('level')).to eq(true)

    expect(palindrome?('palindrome')).to eq(false)
    expect(palindrome?('not a palindrome')).to eq(false)
  end
end