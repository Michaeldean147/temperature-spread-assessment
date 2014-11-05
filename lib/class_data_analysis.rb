class ClassDataAnalysis


  def initialize(data)

   @data = data

  end



  def lowest_temperature

    lows = []
    @data.each do |temp|
      lows.push(temp.low)
    end
    lows.min
  end

  def highest_temperature

    highs = []
    @data.each do |temp|
      highs.push(temp.high)
    end
    highs.max
  end

  def day_of_lowest_temperature

    lowest = 0
    @data.each do |temp|
      if temp.low == lowest_temperature
        lowest = temp.day
      end
    end
    lowest
  end

  def day_of_highest_temperature

    highest = 0
    @data.each do |temp|
      if temp.high == highest_temperature
        highest = temp.day
      end
    end
    highest
  end

  def average_temperatures

   average = []
   @data.each do |temp|
     average.push((temp.high + temp.low) / 2.0)
   end
   average
  end
end
