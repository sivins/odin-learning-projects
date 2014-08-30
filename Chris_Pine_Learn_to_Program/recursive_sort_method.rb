#This is a recursive function to sort an array of strings

def real_sort_list unsorted_list, sorted_list

  if unsorted_list.length == 1
    sorted_list.push(unsorted_list[0])
    return sorted_list
  end
  
  picker = unsorted_list.length
  winner = unsorted_list[picker-1]
  
  while picker > 0
  
    picker -= 1

	if winner < unsorted_list[picker - 1]
		winner = winner
	else
		winner = unsorted_list[picker - 1]
	end

  end
  
  sorted_list.push(winner)
  unsorted_list.delete(winner)
  real_sort_list unsorted_list, sorted_list
  
end


#Wrapper function to include the empty array for the sorted list:

def sort_list list
    real_sort_list list, [] 
end
