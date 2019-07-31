class BubbleSortBy

    def bubble_sort_by array
      puts "Sorted Array:"
        puts array.to_s
        i = 0
        unless i == (array.length*2)-2 
            array.inject do |element1, element2| 
                (yield(element1,element2) > 0 ? (array[i], array[i+1] = array[i+1], array[i]) : "")
                i += 1 
                element2 
            end
        end
      puts "Unsorted Array:"
        puts array.to_s
    end

end
    
givenArr= ["hi", "hey", "hello", "Greetings"]
test = BubbleSortBy.new

test.bubble_sort_by(givenArr) do |left,right|
    left.length - right.length
end