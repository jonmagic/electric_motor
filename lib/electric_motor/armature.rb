class ElectricMotor::Armature
  def initialize
    @angle = 0
  end

  attr_reader :angle

  def turn(degrees)
    @angle += degrees % 360
  end
end
