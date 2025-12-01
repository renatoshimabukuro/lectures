class Car # Factory of Cars
  # abaixo esta um shortcut do bloco reader
  attr_reader :color, :brand
  # abaixo esta um shortcut do bloco writer
  attr_writer : color
  # accessor is reader and writer
  attr_accessor : color


  # constructor method
  def initialize(color)
    # instance variables
    @color = color
    @brand = 'BMW'
    @engine_started = false
  end

  # reader - getter
  def color
    @color
  end

  #writers - setters
  def color = (new_color)
    @color = new_color
  end

  # change the state
  def start_engine
    @engine_started = true
  end

  # access the state
  def engine_started?
    @engine_started
  end

  private

  def start_the_battery
  end

  def take_fuel_from_the_tank
  end

  def ignite_the_engine
  end


end
