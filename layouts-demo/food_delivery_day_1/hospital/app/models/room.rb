require_relative '../models/patient'

class Room
  attr_reader :patients
  attr_accessor :id

  class FullRoom < Exception; end

  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || [] # array vazio
  end

  def add(patient)
    if full?
      # send an error
      fail FullRoom, "The room is full!"
    else
      patient.room = self # self sera a instanciada room
      @patients << patient
    end
  end

  def full?
    @capacity == @patients.length
  end

  begin
    room = Room.new(capacity: 2)
    sarah = Patient.new(name: "sarah")
    room.add(sarah)
    puts "Is the room full?"
    puts room.full?

    john = Patient.new(name: "john")
    room.add(john)
    puts "Is the room full?"
    puts room.full?

    anne = Patient.new(name: "anne")
    room.add(anne)
    puts "Is the room full?"
    puts room.full?

    p room.patients
  rescue FullRoom
    puts "The room is full, can't add anymore else"
  end
end
