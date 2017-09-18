class Thermometer
  def initialize(coordinates)
    @location = coordinates
  end
  
  def read_temperature
  end

  def read
  end
end

thermometer = Thermometer.new
coordinates_of_new_york = [, ]
thermometer.read_temperature(coordinates_of_new_york, Time.now)

thermometer = Thermometer.new
thermometer.place_location(coordinates_of_new_york)
thermometer.read