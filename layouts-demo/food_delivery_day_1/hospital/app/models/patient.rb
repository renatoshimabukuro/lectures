class Patient
  attr_reader :cured, :name
  attr_accessor :room, :id

  def initialize(attributes={})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood_type = [:blood_type]
  end

  def cure
    @cure = true
  end
end
