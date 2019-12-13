require_relative 'bike'

class DockingStation

    attr_reader :bike_list
    attr_reader :capacity

    DEFAULT_CAPACITY = 20

    def initialize
        @bike_list = []
        @capacity = DEFAULT_CAPACITY
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bike_list.pop
    end

    def dock_bike(bike)
        fail 'Docking station full' if full?
        @bike_list.push(bike)
    end

    private

    def full?
        @bike_list.count >= @capacity
    end

    def empty?
        @bike_list.empty?
    end
end