class ArrayDataAnalysis
  # call on the TEMPERATURE_DATA
  # make a variable for each column of data
  # make methods to evaluate each of those
  def initialize(data)
    @data = data
    @lows = lows
    @highs = highs
  end

  def lows
    @lows
  end

  def highs
    @highs
  end

  def lowest_temperature
    # @data[8][2]
    lows = []
    @data.each do |day|
      lows.push(day[2])
    end
    lows.sort[0]
  end

  def highest_temperature
    highs = []
    @data.each do |day|
      highs.push(day[1])
    end
    highs.sort[-1]
  end

  def day_of_lowest_temperature

    lowest_day = @data.select {|day_num| day_num[2] == lowest_temperature}
    lowest_day[0][0]

  end

  def day_of_highest_temperature

    highest_day = @data.select {|day_num| day_num[1] == highest_temperature}
    highest_day[0][0]
  end

  def average_temperatures
    @data.map do |day|
      (((day[1]).to_f + (day[2]).to_f)/2)
    end
  end
end
