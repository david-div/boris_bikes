require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  # it 'should release bike' do
  #   expect(subject).to respond_to :release_bike # : as it's a method
  # end

  it "should say its working" do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
  end
  # it { is_expected.to respond_to(:bike_been_docked?) }

  it 'has my bike been docked?' do
  expect(subject).to respond_to(:bike_been_docked?)
  end

  it 'dock the bike' do
  denis = Bike.new
  expect(subject.dock_bike(denis)).to eq [denis]
  end

  it 'should dock_bike' do
  expect(subject).to respond_to(:dock_bike)
  end

  it { is_expected.to respond_to(:dock_bike) }  #end
#end

  it "No doking station available" do
  20.times { subject.dock_bike(Bike.new) }
  end


end
=begin
  it 'show which bike is docked' do
  denis = Bike.new
  subject.dock_bike(denis)
  expect(subject.bike_show).to eq denis
  end
=end
