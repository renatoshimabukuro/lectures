require 'csv'
require_relative '../models/room'

class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
  end

  def find(id)
    @rooms.find do |room|
      room.id == id
    end
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity] == "true"
      room = Room.new(row)
      @rooms << room
    end
    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
  end
end
