def quick_sort!(arr, low_index, high_index)
  if low_index < high_index 
    partition_index = partition!(arr, low_index, high_index)
    quick_sort!(arr, low_index, partition_index - 1)
    quick_sort!(arr, partition_index + 1, high_index)
  end
  arr
end

def partition!(arr, low_index, high_index)
  pivot = arr[high_index]
  pivot_index = low_index

  i = low_index
  while i < high_index
    if arr[i] <= pivot
      tmp = arr[i]
      arr[i] = arr[pivot_index]
      arr[pivot_index] = tmp
      pivot_index += 1
    end 
    i += 1
  end
  tmp = arr[pivot_index]
  arr[pivot_index] = pivot
  arr[high_index] = tmp

  pivot_index
end

