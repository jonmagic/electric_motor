class ElectricMotor::Magnet
  def north_pole
    Pole.new(:north)
  end

  def south_pole
    Pole.new(:south)
  end
end
