class StringCalculator
  def add(input)
    return 0 if input.empty?
    input.to_i if input.size == 1
    input[0].to_i + input[2].to_i
  end
end