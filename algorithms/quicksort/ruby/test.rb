require_relative "quicksort"

def test_sort_empty()
  input = []
  result = quick_sort!(input, 0, input.length - 1)
  expected = []
  if result == expected
    puts "Test sort empty: Passed"
  else
    puts "Test sort empty: Failed"
  end
end

def test_sort_one_element()
  input = [1]
  result = quick_sort!(input, 0, input.length - 1)
  expected = [1]
  if result == expected
    puts "Test sort one element: Passed"
  else
    puts "Test sort one element: Failed"
  end
end

def test_sort_two_elements()
  input = [10, 1]
  result = quick_sort!(input, 0, input.length - 1)
  expected = [1, 10]
  if result == expected
    puts "Test sort two elements: Passed"
  else
    puts "Test sort two elements: Failed"
  end
end

def test_sort_three_elements()
  input = [10, 1, 2]
  result = quick_sort!(input, 0, input.length - 1)
  expected = [1, 2, 10]
  if result == expected
    puts "Test sort three elements: Passed"
  else
    puts "Test sort three elements: Failed"
  end
end

def test_sort_many_elements()
  input = [3, 12, 7, 49, 23, 19, 45, 38, 10, 15, 
           47, 14, 31, 21, 50, 6, 37, 43, 34, 28, 
           33, 41, 22, 39, 24, 4, 11, 48, 13, 2, 
           17, 5, 44, 35, 26, 30, 18, 40, 36, 42, 
           16, 8, 20, 27, 25, 1, 9, 29, 32, 46]

  result = quick_sort!(input, 0, input.length - 1)
  expected = input.sort
  
  if result == expected
    puts "Test sort many elements: Passed"
  else
    puts "Test sort many elements: Failed"
  end
end


# Running the tests
test_sort_empty()
test_sort_one_element()
test_sort_two_elements()
 test_sort_three_elements()
test_sort_many_elements()

