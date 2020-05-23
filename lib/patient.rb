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

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map do |appointment|
    appointment.doctor
    end
  end
end

# class Patient
#
#   attr_accessor :name, :appointments, :doctor
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def doctors
#     appointments.collect {|appointment| appointment.doctor}
#   end
#
#   def new_appointment(doctor, date)
#     Appointment.new(self, date, doctor)
#   end
#
# end
