require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail 'No bikes available' unless !@bikes.empty?
    chosen = @bikes.sample
    # puts "Pre-delete. Bikes = #{@bikes}, Chosen Bike = #{chosen}"
    @bikes.delete(chosen)
    # puts "Post-delete. Bikes = #{@bikes}, Chosen Bike = #{chosen}"
    chosen
  end

  def dock(bike)
    fail 'Docking station occupied' unless @bikes.empty?
    @bikes << bike
    # puts "bikes array post docking: #{@bikes}"
    bike
  end
end
