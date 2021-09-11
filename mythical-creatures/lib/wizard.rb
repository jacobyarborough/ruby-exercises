class Wizard

  attr_reader :name

  def initialize(name, beard = {bearded: true})
    @name = name
    @bearded = beard[:bearded]
    @rest_status = true
    @cast_counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(chant)
    'sudo ' + chant
  end

  def rested?
    if @cast_counter >= 3
      @rest_status = false
    end
    @rest_status
  end

  def cast
    @cast_counter += 1
    "MAGIC MISSLE"
  end

end
