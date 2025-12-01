class Router
  def initialize(patient_controller)
    @patient_controller = patient_controller
    @running = true
  end

  def run
    puts "Hospital check"
    puts "           --           "

    while @running
      display_hospital
      action = gets.chomp.to_i
      print 'clear'
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @patient_controller.list_patients
    when 2 then @patient_controller.add_patient
    when 3 then @patient_controller.remove_patient
    when 4 then @patient_controller.find_patient
    when 6 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_hospital
    puts ""
    puts "Select a number"
    puts "1 - List all patients"
    puts "2 - Add a new patient"
    puts "3 - Find a patient"
    puts "6 - Stop and exit the program"
  end
end
