def english_number num
    if num < 0
        return "No negative numbers."
    end
    if num == 0
        return "zero"
    end
    
    num_string = ''
    space = false #put a space before every word except the first word
    
    ones = ['one', 'two', 'three', 'four',
            'five', 'six', 'seven', 'eight',
            'nine']
    tens = ['twenty', 'thirty', 'forty',
            'fifty', 'sixty', 'seventy', 'eighty',
            'ninety']
    teens = ['ten', 'eleven', 'twelve', 'thirteen','fourteen',
            'fifteen', 'sixteen', 'seventeen', 'eighteen',
            'nineteen']
    
    #left is what we have left to write
    #write is what we are writing
    
    left = num
    write = left/1000 #How many thousands
    if write > 0
        left -= write * 1000 #subtract thousands place
        thousands = english_number write
        if space
            num_string += ' '
        end
        num_string = num_string + thousands + ' thousand'
        space = true
    end
    
    write = left/100
    if write > 0
        left -= write * 100
        if space
            num_string += ' '
        end
        num_string += ones[write-1] + ' hundred'
        space = true
    end
    
    write = left/10
    if write > 0
        if write == 1
            if space
                num_string += ' '
            end
            num_string += teens[left-10]
            return num_string
        else
            left -= write * 10
            if space
                num_string += ' '
            end
            num_string += tens[write-2]
            space = true
        end
    end
    
    if left == 0
        return num_string
    else
        if space
            num_string += '-' #dash between tens and ones
        end
        num_string += ones[left-1]
        return num_string
    end
end

puts english_number(1)
puts english_number(10)
puts english_number(34)
puts english_number(12345)
puts english_number(85)
puts english_number(1000)
