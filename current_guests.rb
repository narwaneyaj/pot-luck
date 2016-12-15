def guests
  file = 'people.csv'
  txt = open(file, 'a+')
  file2 = 'foods.csv'
  txt2 = open(file2, 'a+')
  people = 0

  txt.each_line do |line|
    person_info = line.split(',')
    name = person_info[0]
    guests = person_info[2].to_i
    people = people + guests + 1
  end

  puts "Enter name"
  name = scan
  puts "Enter email"
  email = scan
  puts "Enter number of guests"
  guests1 = scan
  puts "Enter food item"
  food = scan


  while guests1.to_i > 10
      puts "Whoops you can only have up to 10 guests! Try again!"
      guests1 = scan
    end

    people = people + guests1.to_i + 1

    puts "\n"
    puts "The number of guests are: #{people}"

    txt.write ("#{name},#{email},#{guests1},#{food}")

    txt2.each_line do |line|
       food_info = line.split(',')
       if food == food_info
         food_info.replace " "
       end
     end

end

def scan
  $stdout.flush
  $stdin.gets
end

# def rsvp
#   txt = open('foods.csv')
#   people = 0
#
#   puts "Enter name"
#   name = scan
#   puts "Enter email"
#   email = scan
#   puts "Enter number of guests"
#   guests1 = scan
#   puts "Enter food item"
#   food = scan
#
#
# while guests1.to_i > 10
#     puts "Whoops you can only have up to 10 guests! Try again!"
#     guests1 = scan
#   end
#
#
#
#   txt.each_line do |line|
#     food_info = line.split(',')
#     if food == food_info
#       food_info.replace " "
#     end
#   end
#
#   puts txt.read
#
#   people = people + guests1.to_i + 1
#
#   total_guests = guests + people
#   puts "\n"
#   puts "The number of guests are: #{total_guests}"
#
#   array = [name, email, guests1, food]
#   return array
# end

guests
