REGEX = /(\w+)\s(\w+)/
pattern = /(?<first_name>\w+)\s(?<last_name>\w+)/

puts "Entre com o primeiro e o ultimo nome"
name = gets.chomp

match = name.match(REGEX)
  puts "Primeiro nome: #{match[1]} sobrenome: #{match[2]}"

match = name.match(pattern)
  puts "Primeiro nome: #{match[:first_name]} sobrenome: #{match[:last_name]}"
