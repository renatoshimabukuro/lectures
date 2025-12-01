students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# students.each_with_index do |student, index|
#   p "#{student} is #{student_ages[index]} years old"
# end

students_age = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

paris = {
  "country" => "France",
  "monument" => "Eiffel Tower",
}

# # Read
# p paris["country"]

# # create
# paris["population"] = 10
# p paris

# # Update
# paris["monument"] = "Big Ben"
# p paris

# # Delete
# paris.delete("country")
# p paris

# paris.each do |key, value|
#   p key
#   p value
#   p "Paris #{key} is #{value}"
# end

#I s there a monument key inside of ny Paris hash

# Iterate through paris hash
# Do any of the 'keys' == 'monument'
# If it does, return true

key_present = false

# paris.each do |key, value|
#   if key == "monument"
#     key_present = true
#   end
# end
# puts key_present

# p paris.key?("monument")

# paris.key?("country")   #=> true
# paris.key?("language")  #=> false
# paris.keys              #=> ["country", "population", "star_monument"]
# paris.values            #=> ["France", 2211000, "Tour Eiffel"]


# cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]

# p cities[1][2]  #=> "Tour Eiffel"

# cities = {
#   "London" => {
#     "country" => "England",
#     "monument" => "Big Ben",
#     "friends" => ["Tom", "Seb"]
#   },
#   "Paris" => {
#     "country" => "France",
#     "monument" => "Tour Eiffel"
#   }
# }
# p cities["Paris"]["monument"]  #=> "Tour Eiffel"

# cities["London"]["friends"].each do |friend|
#   p "I like my friend #{friend}"
# end

# Symbols
# paris = {
#   :country => "France",
#   :monument => "Eiffel Tower",
# }

# # Symbols
# paris = {
#   country: "France",
#   monument: "Eiffel Tower",
# }

# p paris[:country]

# def tag(name, content)
#   p "<#{name}>#{content}</#{name}>"
# end

# tag("h1", "Hello World")
# # => <h1>Hellow World</h1>

# # Version 1
# def tag(name, content, attr ={})
#   # Initialize an array
#   # Itetate over the final argument from the method call
#   # Make a string where the key = "value"
#   # Put them inside an array
#   # Join them all up
#   # Interpolate inside of the tag
#   tags_list = []
#   attr.each do |key, value|
#     key_value_string = " #{key}='#{value}'"
#     tags_list << key_value_string
#   end
#   #p tags_list
#   joint_tags = tags_list.join
#   p "<#{name}#{joint_tags}>#{content}/#{name}>"
# end


# tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# # => <a href="http://lewagon.org" class="btn">Le Wagon</a>

#Version 2
def tag(name, content, attr ={})
  tags_list = attr.map { |key, value| " #{key}='#{value}'"}.join
  p "<#{name}#{tags_list}>#{content}/#{name}>"
end

# If attributes are the last item, it's ok to remove the curly brackets
tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn" )
# tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href="http://lewagon.org" class="btn">Le Wagon</a>
