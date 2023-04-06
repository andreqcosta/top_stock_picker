# get bigest gap between two position

def stock_picker(array)
    biggest = 0
    pair = []
    array.each_with_index do |buy, i|
        array[i..array.size].each_with_index do |sell, j |
            if sell - buy > biggest
                biggest = sell - buy
                pair = [i, j + i]
            end
        end
    end
    pair
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([17,3,6,9,1,8,6,12,10,8,20])
#[1,4] 