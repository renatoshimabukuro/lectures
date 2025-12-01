require_relative 'cat'

felix = Cat.new("felix", "black")
p felix

garfield = Cat.new("garfield", "orange")
p garfield

garfield.dye("green")
p garfield


puts Cat.branch
