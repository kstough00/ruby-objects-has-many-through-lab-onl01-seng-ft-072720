class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Patient.all.select {|patient| [patient].doctor == self}
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
end