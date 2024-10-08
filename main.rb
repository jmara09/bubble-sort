def bubble_sort(array)
  last_iteration = array.length - 1
  swap = false
  (array.length - 1).times do
    array.each_with_index do |num, idx|
      if num > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = true
      end
      break if last_iteration == idx + 1
    end
    return array if swap == false
    swap = false
    last_iteration -= 1
 end
 array
end 

p bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]

p bubble_sort([5,4,3,2,1])
# => [1, 2, 3, 4, 5]