# frozen_string_literal: true

def merge_sort(array)
  if array.length <= 2
    return unless array[0] > array[1]

    array[1], array[0] = array[0], array[1]
    array
  else
    left_half, right_half = merge_sort(array.each_slice((array.length / 2.0).round).to_a)
  end
end
