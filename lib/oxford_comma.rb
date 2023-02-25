require 'pry'

def oxford_comma(array)
    last_index = array.length - 1
    new_arr = []

    array.each_with_index do |element, index|
        if index != last_index || last_index == 0
            new_arr.push(element)
        else
            new_arr.push("and #{element}")
        end
    end
    last_index == 1 ? new_arr.join(" ") : new_arr.join(", ")
end

puts oxford_comma(['this', 'that', 'another'])
puts oxford_comma(['this', "that"])
puts oxford_comma(['this'])