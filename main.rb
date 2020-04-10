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

puts bubble_sort([45, 36, 18, 35, 13, 33, 25])

def bubble_sort_by(arr)
  i = 0
  swapp = false
  while arr[i+1].nil? == false do
    if arr[i].length > arr[i+1].length
      arr[i], arr[i+1] = arr[i+1], arr[i]
      i += 1
      swapp = true
    elsif arr[i].length <= arr[i+1].length
      i += 1
    elsif arr[i+1].nil? == true && swapp
      swapp = false
      i = 0
    end
  end
  puts arr
end

#bubble_sort_by(["hi","hello","hey", "hooy"])
