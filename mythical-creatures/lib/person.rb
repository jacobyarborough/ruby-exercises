class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stone_status = false
  end

  def stoned?
    @stone_status
  end

  def make_stoned
    @stone_status = true
  end

  def make_unstoned
    @stone_status = false
  end

end
