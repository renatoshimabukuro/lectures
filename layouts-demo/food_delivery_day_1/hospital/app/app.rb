require_relative 'router'
require_relative './controllers/patient_controller'
require_relative './repositories/patient_repository'

patient_file_path = File.join(__dir__, './data/patients.csv')
patient_repository = PatientRepository.new(patient_file_path)
pattient_controller = PatientController.new(patient_repository)

room_file_path = File.join(__dir__, './data/room.csv')
room_repository = RoomRepository.new(room_file_path)
room_controller = RoomController.new(room_repository)

router = Router.new(patient_controller)
router.run
