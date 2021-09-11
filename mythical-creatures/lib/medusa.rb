class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues.push(victim)
    victim.make_stoned
    handle_excess_victims
  end

  def handle_excess_victims
    return if @statues.length <= 3
    victim_1 = @statues.shift
    victim_1.make_unstoned
  end

end
