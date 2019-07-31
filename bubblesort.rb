class BubbleSort
    def bubble_sort(array)
    #[1, 4, 5, 2, 1]
        


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


end
a = [750, 4, 5, 2, 1]
@new = BubbleSort.new
p @new.bubble_sort(a)

