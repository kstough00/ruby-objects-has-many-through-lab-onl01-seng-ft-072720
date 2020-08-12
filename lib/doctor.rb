class Doctor
  
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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    Appointment.all.select {|appointment| appointment.doctor == self}
    appointment.map {|appointment| appointment.doctor}
  end
  
  # def artists
  #   Song.all.select {|song| song.artist == self}
  #   songs.map {|song| song.artist}
  # end
  
end