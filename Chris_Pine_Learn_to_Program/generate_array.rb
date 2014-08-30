list = []

while true
    new_item = gets.chomp
    if new_item != ""
         list.push(new_item)
     else
        break
    end
end

puts list
