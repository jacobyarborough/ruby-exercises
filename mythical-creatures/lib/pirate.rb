class Pirate

  attr_reader :name,
              :job,
              :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @curse_status = false
    @bad_act_counter = 0
    @booty = 0
  end

  def cursed?
    if @bad_act_counter >= 3
      @curse_status = true
    end
    @curse_status
  end

  def commit_heinous_act
    @bad_act_counter += 1
  end

  def rob_ship
    @booty += 100
  end

end
