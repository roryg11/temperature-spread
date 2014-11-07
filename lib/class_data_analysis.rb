class ClassDataAnalysis
  def initialize(data)
    @data = data
  end

  def lowest_temperature
    lowest_temps = @data.map do |object|
      object.low
    end
    lowest_temps.min
    # iterate through the objects in the data
    # to find the lowest "low" argument that has been passed through
  end

  def highest_temperature
    highest_temps = @data.map do |object|
      object.high
    end
    highest_temps.max
  end

  def day_of_lowest_temperature
    lowest_day_object = @data.select {|object| object.low == lowest_temperature}
    lowest_day_value =lowest_day_object.map {|object| object.day}
    lowest_day_value[0]
  end

  def day_of_highest_temperature
    highest_day_object = @data.select {|object| object.high == highest_temperature}
    highest_day_value = highest_day_object.map {|object| object.day}
    highest_day_value[0]
  end

  def average_temperatures
    # want to iterate through two arrays
    # add each thing in the same position together
    # push into a new array
    # divide each result by two

    lowest_temps = @data.map {|object| object.low}
    highest_temps = @data.map {|object| object.high}

    average = lowest_temps.map.with_index {|temp, i| temp.to_f + highest_temps[i].to_f}

    average.map do |num|
      (num/2).to_f

    end
  end
end
