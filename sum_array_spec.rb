def sum(array)
  array.inject(0){ |sum, e| sum += e }
end

describe 'sum' do
  it 'returns the sum of the elements of given array' do
    expect(sum([])).to eq(0)
    expect(sum([-1, 1])).to eq(0)
    expect(sum([1, 2, 3])).to eq(6)
    expect(sum([1, 2, 34, 5, 6, 7, 8, 9])).to eq(72)
  end
end
