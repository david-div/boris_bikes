require './lib/docking_station.rb'

docking_station = DockingStation.new
puts docking_station
puts "1. I can create a new Docking Station"

bike = Bike.new
bike.working?
puts "2. Bike working? method works"

docking_station.dock_bike(bike)
puts "3. Calling method dock_bike works"
