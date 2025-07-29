class StringCalculator
  def add(input)
    return 0 if input.empty?
    input.to_i if input.size == 1
  end
end