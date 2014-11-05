class TemperatureData
  attr_reader :day, :high, :low

  def initialize(day, high, low)
    @day = day
    @high = high
    @low = low
  end

  def day
    @day
  end

  def high
    @high
  end

  def low
    @low
  end
end
