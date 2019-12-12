require_relative 'bike'

class DockingStation

    attr_reader :bike
    
    def release_bike
        # Bike.new
        @bike
    end

    def dock_bike(bike)
        @bike = bike
    end
end