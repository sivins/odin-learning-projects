#99 Bottles of Beer on the Wall

beers_on_the_wall = 99

while beers_on_the_wall >= 0
  puts beers_on_the_wall.to_s + "bottles of beer on the wall,"
  puts beers_on_the_wall.to_s + "bottles of beer,"
  puts "Take one down, pass it around"
  puts beers_on_the_wall.to_s + "bottles of beer on the wall,"
  beers_on_the_wall -= 1
end
