


class Patient
  attr_accessor :name, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all {|appointment| appointment.patient}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end





end
