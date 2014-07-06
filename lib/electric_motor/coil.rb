class ElectricMotor::Coil
  def initialize
    @side_a_current = ElectricMotor::Current.new(nil)
    @side_b_current = ElectricMotor::Current.new(nil)
  end

  def side_a
    if @side_a_current.positive? && @side_b_current.negative?
      ElectricMotor::Magnet::Pole.new(:south)
    elsif @side_a_current.negative? && @side_b_current.positive?
      ElectricMotor::Magnet::Pole.new(:north)
    else
      ElectricMotor::Magnet::Pole.new(nil)
    end
  end

  def side_b
    if @side_b_current.positive? && @side_a_current.negative?
      ElectricMotor::Magnet::Pole.new(:south)
    elsif @side_b_current.negative? && @side_a_current.positive?
      ElectricMotor::Magnet::Pole.new(:north)
    else
      ElectricMotor::Magnet::Pole.new(nil)
    end
  end

  def connect_a(current)
    @side_a_current = current
  end

  def connect_b(current)
    @side_b_current = current
  end

  def disconnect_a
    @side_a_current = ElectricMotor::Current.new(nil)
  end

  def disconnect_b
    @side_b_current = ElectricMotor::Current.new(nil)
  end
end
