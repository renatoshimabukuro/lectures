class Cat
  def initialize(name, color)
    @color = color
    @name = name
  end

  def dye(new_color)
    @color = new_color
  end

  # So sera acessivel quando chamar a classe
  def self.branch
    "Mammals"
  end
end
