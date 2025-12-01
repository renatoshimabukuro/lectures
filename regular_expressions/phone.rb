REGEX = /^(\+55)?\s?\(?\d{2}\)?\s?9\d{4}-?\d{4}$/
puts "Entre com o numero do celular"
phone = gets.chomp

if phone.match?(REGEX)
  puts "Celular valido"
else
  puts "Celular invalido"
end
