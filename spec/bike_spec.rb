require "bike.rb"

describe Bike do
    it "Bike responds to working?" do
    
    expect(Bike.new).to respond_to(:working?)
    end
end