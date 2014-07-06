class ElectricMotor::Magnet::Pole
  def initialize(direction)
    @direction = direction
  end

  attr_reader :direction

  def attract?(pole)
    direction != pole.direction
  end

  def repel?(pole)
    direction == pole.direction
  end
end
