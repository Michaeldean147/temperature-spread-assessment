class ArrayDataAnalysis

  def initialize(data)

    @data = data

  end


  def lowest_temperature

    lows = []

    @data.each do |day|
      lows.push(day[2])
    end
      lows.min
  end

  def highest_temperature

    highs = []

    @data.each do |day|
      highs.push(day[1])
    end
      highs.max

  end

  def day_of_lowest_temperature

    lowest = 0
    @data.each do |day|
      if day[2] == lowest_temperature
        lowest = day[0]
      end
    end
    lowest
  end

  def day_of_highest_temperature

    highest = 0
    @data.each do |day|
      if day[1] == highest_temperature
        highest = day[0]
      end
    end
    highest
  end

  def average_temperatures

    average = []
    @data.each do |day|
      average.push((day[1]+day[2]) / 2.0)
    end
    average
  end

end
