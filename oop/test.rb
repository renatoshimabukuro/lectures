musicians = ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Mason"]

# # CRUD

# # Create

# musicians << "Stevie Wonder"

# p musicians

# # Read

# p musicians[1]

# # Update

# musicians[4] = "Stevie Nicks"
# p musicians

# # Delete

# musicians.delete_at(-1)
# p musicians

# range = 1..10
# p range

# p range.to_a

# range = 1...10
# p range.to_a

# for i in 1..10
#   puts i
# end

# for i in 0...4
#   puts musicians[i]
# end

# for i in 0...(musicians.length)
#   puts musicians[i]
# end

# for musician in musicians
#   puts musician
# end

# musicians.each do |musician|
#   puts "Hello #{musician}"
# end


# musicians.each_with_index do |musician, index|
#   puts "#{index +1} - #{musician}"
# end

# Return a new array of upcased musicians

# upcased_musicians = musicians.map do |musician|
#   musician.upcase
# end

# p musicians
# p upcased_musicians

# musicians_first_name = musicians.map do |musician|
#  # musician.split.first
#   musician.split[0]
# end

# p musicians_first_name

# r_musicians = musicians.count do |musician|
#   # Condition
#   musician.start_with?('R')
# end

# p r_musicians

# counter = 0
# musicians.each do |musician|
#   if musician.start_with?('R')
#     counter += 1
#   end
# end

# p counter

# Extract musicians starting with R

# musicians_with_r = musicians.select do |musician|
#   musician.start_with?('R')
# end

# p musicians_with_r

# def full_name(first_name, last_name)
#   full_name = "#{first_name} #{last_name}"
#   yield (full_name)
# end

# hello = full_name("George", "Harrison") do |name|
#  "Hello #{name}! How are you?"
# end

# puts hello

musicians = ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Mason"]
musicians.count do |musician|
  starts_with_d =  musician.start_with?('D')
  puts starts_with_d
end
