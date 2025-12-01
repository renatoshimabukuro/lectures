# Custom greeting method

def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield (full_name)
end

hello = greet('john', 'lennon') do |name|
  "Hello #{name}, you are looking quite fine today!"
end

puts hello

bonjour = greet('john', 'lennon') do |name|
  "Bonjour #{name}, coment allez-vouz?"
end

puts bonjour
