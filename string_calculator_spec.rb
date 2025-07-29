require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new.add("")).to eq(0)
    end

    it "returns the number for a single number string" do
      expect(StringCalculator.new.add("5")).to eq(5)
    end

    it "sums two numbers separated by a comma" do
      expect(StringCalculator.new.add("5,7")).to eq(12)
    end

    it "sums three numbers separated by a comma" do
      expect(StringCalculator.new.add("5,7,4")).to eq(16)
    end

    it "sums four numbers separated by a comma" do
      expect(StringCalculator.new.add("5,7,4, 20")).to eq(36)
    end

    it "sums five numbers separated by a comma" do
      expect(StringCalculator.new.add("15,5,6,20,40")).to eq(86)
    end
  end
end