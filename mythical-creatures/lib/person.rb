class Person

  attr_reader :name
  attr_accessor :stone_status

  def initialize(name)
    @name = name
    @stone_status = false
  end

  def stoned?
    @stone_status
  end

end
