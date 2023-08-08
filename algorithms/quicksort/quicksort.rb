
# TODO: this is untested ond doesn't work
def quick_sort(input, low_index, high_index)
  if low_index < high_index 
    partition_index = partition(input, low_index, high_index)
    quick_sort(input, low_index, partition_index - 1)
    quick_sort(input, partition_index + 1, high_index)
  end
  input
end

def partition(input, low_index, high_index)
  pivot = input[high_index]
  pivot_index = low_index

  i = low_index
  while i < high_index
    if input[i] <= pivot
      temp = input[i]
      input[i] = input[pivot_index]
      input[pivot_index] = temp
      pivot_index += 1
    end 
    i += 1
  end
  tmp = input[pivot_index]
  input[pivot_index] = pivot
  input[high_index] = tmp
  return i
end
