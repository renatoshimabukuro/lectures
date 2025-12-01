require_relative '../views/patient_view'

class PatientController
  def initialize(patient_repository)
    @patient_repository = patient_repository
    @patient_view = PatientView.new
  end

  def add_patient
    name = @patient_view.ask_something("name")
    blood_type = @patient_view.ask_something("blood type")
    patient = Patient.new(name: name, cured: false, blood_type: blood_type)
  end

  def list_patients
  end

  def find_patient
  end

  def remove_patient
  end
end
