def bubble_sort(numbers)
    counter = 0
    i = 0
    while counter < numbers.length-1
        if numbers[i] > numbers[i+1]
            numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
        end
        i += 1
        if i == numbers.length-1
            counter += 1
            i = 0
        end        
    end
    puts numbers
end

puts bubble_sort([45, 36, 18, 35, 13, 33, 25])
