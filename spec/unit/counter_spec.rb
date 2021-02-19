require 'counter'

describe Counter do
  before (:each) { @counter = Counter.new }

  describe '#increment' do
    it 'adds 1 to the count' do
      @counter.increment
      expect(@counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'takes 1 from the count' do
      @counter.decrement
      expect(@counter.count).to eq -1
    end
  end

  describe '#reset' do
    it 'returns the count to 0' do
      @counter.increment
      @counter.reset
      expect(@counter.count).to eq 0
    end
  end

  describe '#time' do
    it 'adds the time of last count' do
      @counter.increment
      time = @counter.time
      expect(@counter.time).to eq time
    end

  end

end
