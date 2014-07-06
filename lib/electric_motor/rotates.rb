module ElectricMotor::Rotates
  def angle
    @angle ||= 0
  end

  def turn(degrees)
    @angle = (angle + degrees) % 360
  end
end
