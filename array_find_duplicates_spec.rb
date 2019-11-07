# frozen_string_literal: true

def duplicates?(array)
  array.uniq.size != array.size
end

describe 'duplicates?' do
  it 'returns boolean based on if an array has duplicates values' do
    expect(duplicates?([])).to eq(false)
    expect(duplicates?(Array(1..5))).to eq(false)
    expect(duplicates?([1, 2, 3, 4, 5, 1])).to eq(true)
  end
end
