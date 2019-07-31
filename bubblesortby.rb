class BubbleSortBy

    def bubble_sort_by array

        i = 0
        unless i == (array.length*2)-2 
            array.inject do |element1, element2| 
                (yield(element1,element2) > 0 ? (array[i], array[i+1] = array[i+1], array[i]) : "")
                i += 1 
                element2 
            end
        end
        puts array.to_s
    end

end
    

givenArr= ["hey", "hi", "Greetings", "hello"]
test = BubbleSortBy.new


test.bubble_sort_by(givenArr) do |left,right|
    left.length - right.length
end