require 'docking_station'

describe DockingStation do

  # before(:each) do
  #   @bike = Bike.new
  # end

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if no bikes docked' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'releases working bikes' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end
  end


  it { is_expected.to respond_to(:dock).with(1).argument}

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    # it 'docks 20 bikes' do
    #   20.times { subject.dock Bike.new }
    # end

    it 'raises an error if docking station occupied' do
      bike = Bike.new
      subject.dock(bike)
      expect{subject.dock(bike)}.to raise_error 'Docking station occupied'
    end
  end
  it { is_expected.to respond_to :bikes }

end
