require './lib/person'

class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.length <= 2
      @statues.push(victim)
      victim.stone_status = true
    else
      victim_1 = @statues.shift
      victim_1.stone_status = false
      @statues.push(victim)
      victim.stone_status = true
    end
  end

end
