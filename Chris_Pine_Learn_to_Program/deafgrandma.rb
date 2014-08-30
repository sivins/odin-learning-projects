#Deaf Grandma

puts "Grandma says: 'COME HERE AND TALK TO YOUR POOR OLD GRANDMA!  MAKE SURE YOU SPEAK INTO MY GOOD EAR...'"
you_say = ""
num_byes = 0

while num_byes < 3

  you_say = gets.chomp
  puts "You say : '" + you_say.to_s + "'"

  if you_say == you_say.upcase && you_say != "BYE"
    puts "Grandma says: 'NO, NOT SINCE 1938...'"
    num_byes = 0
  elsif you_say == "BYE"
    puts "Grandma says: 'YOU\'LL HAVE TO SPEAK INTO MY GOOD EAR...ANYWAY, BACK IN 1938...'"
    num_byes += 1
  else
    puts "Grandma says: 'HUH?!! SPEAK UP!!'"
    num_byes = 0
  end

end
