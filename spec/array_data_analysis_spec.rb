require 'spec_helper'

describe ArrayDataAnalysis do
  let(:analyzer) { ArrayDataAnalysis.new(TEMPERATURE_DATA) }

  describe '#lowest_temperature' do
    it "returns the lowest number of all the nested arrays at the last index" do
      expect(analyzer.lowest_temperature).to be == 32
    end
  end

  describe '#highest_temperature' do
    it "returns the highest number in the second entry of all the nested arrays" do
      expect(analyzer.highest_temperature).to be == 97
    end
  end

  describe '#day_of_lowest_temperature' do
    it "return the day corresponding to the lowest temperature (first column in nested array)" do
      expect(analyzer.day_of_lowest_temperature).to be == 9
    end
  end

  describe '#day_of_highest_temperature' do
    it "returns the day corresponding to the highest temperature (first column in the nested array)" do
      expect(analyzer.day_of_highest_temperature).to be == 26
    end
  end

  describe '#average_temperatures' do
    it "returns a array of average temperatures, on for each day" do
      expect(analyzer.average_temperatures.length).to be == 30
      expect(analyzer.average_temperatures[0]).to be == 73.5
      expect(analyzer.average_temperatures[29]).to be == 67.5
    end
  end
end
