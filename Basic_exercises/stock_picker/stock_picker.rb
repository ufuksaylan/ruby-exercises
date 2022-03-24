def stock_picker(array)
    count = 1
    max = 0
    end_value = start_value = -1
    copy_array = array.clone 
    
    while count != 0 do 
        count = 0 
        for i in 0..(array.length - 2)
            
            if array[i] < array[i + 1]
                if ((array[i +1] - array[i]) > max)
                    max = array[i +1] - array[i]
                    start_value = array[i]
                    end_value = array[i+1]
                end
                array[i], array[i + 1] = array[i + 1], array[i]
                count += 1
            end
        end
    end
    return [(copy_array.index(start_value)), (copy_array.index(end_value))] 
end


p stock_picker([17,3,6,9,15,8,6,1,10])