class Centaur

  attr_reader :name,
              :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @mood_status = false
    @stand_status = true
    @lay_status = false
    @activity_counter = 0
    @sick_status = false
  end

  def shoot
    if cranky? || laying?
      'NO!'
    else
      @activity_counter += 1
      'Twang!!!'
    end
  end

  def run
    if laying?
      'NO!'
    else
      @activity_counter += 1
      'Clop clop clop clop!'
    end
  end

  def cranky?
    if @activity_counter >= 3
      @mood_status = true
    end
    @mood_status
  end

  def standing?
    @stand_status
  end

  def sleep
    if standing?
      'NO!'
    else
      @activity_counter = 0
      @mood_status = false
    end
  end

  def lay_down
    @stand_status = false
    @lay_status = true
  end

  def laying?
    @lay_status
  end

  def stand_up
    @stand_status = true
    @lay_status = false
  end

  def drink_potion
    if !standing?
      'NO!'
    elsif !cranky?
      @sick_status = true
    else
      @activity_counter = 0
      @mood_status = false
    end
  end

  def sick?
    @sick_status
  end

end
