require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  # it 'should release bike' do
  #   expect(subject).to respond_to :release_bike # : as it's a method
  # end

  it 'should give a new bike' do
  expect(subject.release_bike.is_a?(Bike)).to eq true
  end

  it 'should say if working or not' do
  expect(subject.release_bike.working?).to eq 'bike works'
  end

end
