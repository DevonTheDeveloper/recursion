# frozen_string_literal: true

def merge_sort(array)
  if array.length < 2
    array
  else
    left_half = merge_sort(array.slice!(0, (array.length / 2.0).round))
    right_half = merge_sort(array)
  end
end
