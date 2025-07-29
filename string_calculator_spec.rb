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

    it "returns the sum for numbers separated by a new line(\n) delimiter" do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
      expect(calculator.add("1\n2\n3")).to eq(6)
      expect(calculator.add("1,2\n3")).to eq(6)
      expect(calculator.add("1,2,3")).to eq(6)
    end

    it "returns the sum for numbers separated by a custom delimiter (pipe)" do
      expect(StringCalculator.new.add("//|\n5|5|5")).to eq(15)
    end

    it "returns the sum for numbers separated by a custom delimiter (;)" do
      expect(StringCalculator.new.add("//;\n5;5;5")).to eq(15)
    end

    it "returns the sum for numbers separated by a custom delimiter ($)" do
      expect(StringCalculator.new.add("//$\n5$5$5$5")).to eq(20)
    end

    context "when negative numbers are present in string" do
      it "should raise an exception if first number is negative numbers" do
        expect{
          StringCalculator.new.add("-5,5")
        }.to raise_error(RuntimeError, "negative numbers not allowed -5")
      end
    end
  end
end