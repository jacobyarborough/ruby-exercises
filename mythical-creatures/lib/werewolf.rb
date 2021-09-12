class Werewolf

  attr_reader :name,
              :location,
              :victims

  def initialize(name, location = '')
    @name = name
    @location = location
    @human_status = true
    @wolf_status = false
    @hunger_status = false
    @victims = []
  end

  def human?
    @human_status
  end

  def change!
    if @human_status == true
      human_to_wolf
    else
      wolf_to_human
    end
  end

  def human_to_wolf
    @human_status = false
    @wolf_status = true
    @hunger_status = true
  end

  def wolf_to_human
    @wolf_status = false
    @human_status = true
  end

  def wolf?
    @wolf_status
  end

  def hungry?
    @hunger_status
  end

  def consume(victim)
    if @human_status == true
      "Can not consume victim while Human"
    else
      @victims.push(victim)
      @hunger_status = false
      victim.status = :dead
    end
  end

end
