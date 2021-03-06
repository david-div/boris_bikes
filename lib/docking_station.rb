require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACTIY = 20

def initialize(capacity=DEFAULT_CAPACTIY)
  @bikes = []
  @broken_bikes = []
  @capacity = capacity
end


def release_bike
    raise "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike, working=true)
    raise "Docking station full" if full?
    working ? @bikes << bike : @broken_bikes << bike

  end

  def bike_been_docked?
    "Bike #{@bikes.last} was the last bike docked"
  end


private
  def full?
    @bikes.count >= @capacity
  end

end
