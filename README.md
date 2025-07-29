# string_calculator

## Overview
`string-calculator` is a Ruby-based project that provides a simple string calculator. The calculator can sum numbers provided in a string format, supporting various delimiters and handling edge cases such as negative numbers.

## Features
- Sum numbers separated by commas.
- Support for custom delimiters.
- Handle new line (`\n`) as a delimiter.
- Raise exceptions for negative numbers.

## Testing
To test the string calculatior we can execute the below to run the tests.

rspec string_calculator_spec.rb

## Usage
To use the string calculator, create an instance of `StringCalculator` and call the `add` method with a string of numbers.


Example:
```ruby
calculator = StringCalculator.new
result = calculator.add("1,2,3")
puts result # Output: 6
