require 'byebug'
class StringCalculator
  attr_accessor :input
  def add(input)
    @input = input

    @numbers = retreive_numbers_from_string

    raise_error_if_negative_numbers_present!

    @numbers.inject(0) { |sum, number| sum + number.to_i }
  end

  def raise_error_if_negative_numbers_present!
    raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?
  end
  def negative_numbers
    @numbers.select { |number| number.to_i < 0 }
  end

  def retreive_numbers_from_string
    delimiter = ","

    if @input[0..1] == "//"
      delimiter = @input[2]
      @input = @input.gsub("//", "")
    end

    @input = @input.gsub("\n", delimiter)
    @input.split(delimiter).reject(&:empty?)
  end
end