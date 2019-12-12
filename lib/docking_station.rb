require_relative 'bike'

class DockingStation

    attr_reader :bike_list

    
    def release_bike
        fail 'No bikes available' unless @bike_list
        @bike_list
    end

    def dock_bike(bike)
        fail 'Docking station full' if @bike_list
        @bike_list = bike
    end
end