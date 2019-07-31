def bubble_sort(array)

  loop do
    action = false
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        action = true
      end
    end

    if !action 
      break
    end

  end      
  return array

end




a = [750, 4, 5, 2, 1]

p bubble_sort(a)

