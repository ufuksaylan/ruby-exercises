def bubble_sort(array)
    count = 1
    while count != 0 do 
        count = 0 
        for i in 0..(array.length - 2)
            
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                count += 1
            end
        end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])