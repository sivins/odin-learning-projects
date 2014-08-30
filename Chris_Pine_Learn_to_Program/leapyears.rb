num_leaps = 0

puts "Enter start year:"
start_year = gets.chomp.to_i
puts "Enter end year:"
end_year = gets.chomp.to_i

while start_year <= end_year

  if start_year % 4 == 0
    num_leaps += 1
  end
  if start_year % 100 == 0 && start_year % 400 != 0
    num_leaps -= 1
  end

  start_year += 1

end

puts num_leaps
