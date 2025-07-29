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
  end
end