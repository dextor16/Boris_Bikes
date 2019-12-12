require_relative 'bike'

class DockingStation

    attr_reader :bike_list

    def initialize
        @bike_list = []
    end

    def release_bike
        fail 'No bikes available' if @bike_list.empty?
        @bike_list.pop
    end

    def dock_bike(bike)
        fail 'Docking station full' if @bike_list.count >= 20
        @bike_list.push(bike)
    end
end