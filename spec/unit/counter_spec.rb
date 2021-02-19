require 'counter'

describe Counter do
  describe '#new' do
    it 'starts with a count of 0' do
      counter = Counter.new
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'adds 1 to the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'takes 1 from the count' do
      counter = Counter.new
      counter.decrement
      expect(counter.count).to eq -1
    end
  end

  describe '#reset' do
    it 'returns the count to 0' do
      counter = Counter.new
      counter.increment
      counter.reset
      expect(counter.count).to eq 0
    end
  end

  describe '#time' do
    it 'adds the time of last count' do
      counter = Counter.new
      counter.increment
      time = counter.time
      expect(counter.time).to eq time
    end

  end

end
