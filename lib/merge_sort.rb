# frozen_string_literal: true

def merge_sort(array)
  if array.length < 2
    array
  else
    left_half = merge_sort(array.slice!(0, (array.length / 2.0).round))
    right_half = merge_sort(array)
    merge(left_half, right_half)
  end
end

def merge(left_half, right_half)
  merged_array = []

  until left_half.empty? || right_half.empty?
    if left_half[0] <= right_half[0]
      merged_array << left_half.shift
    else
      merged_array << right_half.shift
    end
  end
  merged_array + left_half + right_half
end
