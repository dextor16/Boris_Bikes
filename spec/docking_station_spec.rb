require "docking_station.rb"

describe DockingStation do 
    it 'responds to the method release bike' do
        expect(DockingStation.new).to respond_to(:release_bike)
    end
end