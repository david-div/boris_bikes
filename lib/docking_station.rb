require_relative 'bike'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACTIY = 20

def initialize(capacity=DEFAULT_CAPACTIY)
  @bikes = []
  @capacity = capacity
end


def release_bike
    raise "No bikes available" if @bikes.empty?
    # @bikes.pop
  end

  def dock_bike(bike)
    raise "Docking station full" if full?
    @bikes << bike
  end

  def bike_been_docked?
    "Bike #{@bikes.last} was the last bike docked"
  end


private
  def full?
    @bikes.count >= @capacity
  end

end
