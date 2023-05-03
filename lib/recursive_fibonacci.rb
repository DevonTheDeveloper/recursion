# frozen_string_literal: true

def fibs(number)
  fibonacci_sequence = [0, 1]
  number.times do |index|
    fibonacci_sequence << (fibonacci_sequence[index] + fibonacci_sequence[index + 1])
  end
  puts fibonacci_sequence[0...number]
end

def fibs_recursive(number)
  # if number is at 0 or 1, return number
  case number
  when 0
    [0]
  when 1
    [0, 1]
  else
    fibonacci_array = fibs_recursive(number - 1) # Decrement number until it’s at 1 or 0
    fibonacci_array << (fibonacci_array[-1] + fibonacci_array[-2]) # Add last two values and pushes them into the array
  end
end
