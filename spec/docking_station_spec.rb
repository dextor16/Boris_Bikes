require 'docking_station.rb'

describe DockingStation do 
    describe'#release_bike' do
    it 'Releases a bike' do
        bike = Bike.new
        station = DockingStation.new
        station.dock_bike(bike)
        expect(station.release_bike).to eq bike
        end
    end

    it "Should release a working bike" do
        bike = Bike.new
        station = DockingStation.new
        station.dock_bike(bike)
        expect(station.release_bike.working?).to eq true
    end

    it "responds to the method dock bike" do
        expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
    end

    it "Should fail if no bikes are docked" do
        expect{DockingStation.new.release_bike}.to raise_error("No bikes available")
    end

    describe '#dock_bike' do
    it 'raises an error when docking station is full' do
        station = DockingStation.new
        station.capacity.times { station.dock_bike Bike.new }
        expect{station.dock_bike Bike.new}.to raise_error 'Docking station full'
        end
    end

    # it 'Has a default capacity' do
    #     expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    #     end
    # end
end 

