class Hobbit

  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >= 33
      @adult = true
    end
    @adult
  end

  def old?
    @age >= 101
  end

  def has_ring?
    @name == "Frodo"
  end

  def is_short?
    true
  end

end
