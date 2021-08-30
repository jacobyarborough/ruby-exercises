class Unicorn

  attr_reader :name, :color

  def initialize(name, color = "silver")
    @name = name
    @color = color
  end

  def silver?
    if @color.upcase == "SILVER"
      true
    else
      false
    end
  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end

end
