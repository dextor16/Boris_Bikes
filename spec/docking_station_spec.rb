require 'docking_station.rb'

describe DockingStation do 
    it 'responds to the method release bike' do
        expect(DockingStation.new).to respond_to(:release_bike)
    end

    it "Should release a working bike" do
        expect(DockingStation.new.release_bike.working?).to eq true
    end

    it 'responds to the method dock bike' do
        expect(DockingStation.new).to respond_to(:dock_bike)
    end

        

end