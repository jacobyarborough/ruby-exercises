class Dragon

  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger_status = true
    @meal_counter = 0
  end

  def hungry?
    if @meal_counter >= 3
      @hunger_status = false
    end
    @hunger_status
  end

  def eat
    @meal_counter += 1
  end

end
