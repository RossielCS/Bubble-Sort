def bubble_sort(numbers)
  switch = true
  n = numbers.length - 1
  while switch == true
    switch = false
    n.times do |i|
      numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i] if numbers[i] > numbers[i + 1]
      switch = true
    end
    n -= 1
  end
  numbers
end

def bubble_sort_by(arr)
  i = 0
  swapp = true
  while swapp == true
    swapp = false
    while arr[i + 1].nil? == false
      if yield(arr[i], arr[i + 1]).positive? == true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapp = true
      end
      i += 1
    end
    i = 0
  end
  arr
end

puts bubble_sort([45, 36, 18, 35, 13, 33, 25])

puts bubble_sort_by(%w[hi hello superfragilistic hey hooy A]) { |left, right| left.length <=> right.length }
