class Ogre

  attr_reader :name,
              :home,
              :swings,
              :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(person)
     person.encounters
     @encounter_counter += 1
     if @encounter_counter % 3 == 0
       @swings += 1
     end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wake_up
  end

end


class Human
    attr_reader :name,
                :encounter_counter

    def initialize(name = 'Jane')
      @name = name
      @encounter_counter = 0
      @conscious = false
      @wake = 0
    end

    def encounters
      @encounter_counter += 1
    end

    def notices_ogre?
      if @encounter_counter % 3 == 0
        true
      else
        false
      end
    end

    def knocked_out?
      if @wake = 1
        @wake = 0
        @conscious = false
      elsif @encounter_counter % 6 == 0
        @conscious = true
      else
        @conscious = false
      end
      @conscious
    end

    def wake_up
      @wake = 1
    end

end
