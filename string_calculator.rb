require 'byebug'
class StringCalculator
  def add(input)
    return 0 if input.empty?

    input.to_i if input.size == 1

    delimiter = ","

    if input[0..1] == "//"
      delimiter = input[2]
      input = input.gsub("//", "")
    end

    input = input.gsub("\n", delimiter)
    numbers = input.split(delimiter)
    numbers.inject(0) { |sum, number| sum + number.to_i }
  end
end