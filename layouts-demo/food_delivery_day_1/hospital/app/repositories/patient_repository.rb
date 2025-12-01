require 'csv'
require_relative '../models/patient'
require_relative '../repositories/room_repository'

class PatientRepository
  def initialize(csv_file, room_repository)
    @room_repository = room_repository
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    load_csv
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    save_csv
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      patient = Patient.new(row)
      room = @room_repo.find(row[:room_id].to_i)
      patient.room = room
      @patients << patient
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["id", "name", "blood type", "cured", "room id"]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.blood_type, patient.cured, patient.room_id]
      end
    end
  end
end
