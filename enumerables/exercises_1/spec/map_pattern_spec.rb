RSpec.describe 'map pattern' do

  it 'capitalizes' do
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    expect(capitalized_names).to eq(["Alice", "Bob", "Charlie"])
  end

  it 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      doubles.push(number*2)
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = []
    numbers.each do |num|
      squares.push(num**2)
    end
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  it 'lengths' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []
    names.each do |name|
      lengths.push(name.length)
    end
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  it 'normalize zip codes' do
    numbers = [234, 10, 9119, 38881]
    zip_code = []
    #numbers.each do |num|
    #  zip_code.push(num.to_s.rjust(5, '0'))
    #end
    numbers.each do |num|
      until num.to_s.length == 5
          num = '0' + num.to_s
      end
      zip_code.push(num.to_s)
    end
    expect(zip_code).to eq(["00234", "00010", "09119", "38881"])
  end

  xit 'backwards' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = []
    #names.each do |name|
      #backwards.push(name.reverse)
    #end
    names.each do |name|
      index = -1
      reverse_name = ''
      until index = -(name.length)
        reverse_name += name[index]
        index - 1
      end
      backwards.push(reverse_name)
    end
    expect(backwards).to eq(["ecila", "bob", "eilrahc", "divad", "eve"])
  end

  xit 'words with no vowels' do
    words = ["green", "sheep", "travel", "least", "boat"]
    # Your code goes here
    expect(without_vowels).to  eq(["grn", "shp", "trvl", "lst", "bt"])
  end

  xit 'trims last letter' do
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    # Your code goes here
    expect(trimmed).to eq(["do", "ca", "mous", "fro", "platypu"])
  end
end
