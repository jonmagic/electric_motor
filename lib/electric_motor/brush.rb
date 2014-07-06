class ElectricMotor::Brush
  def initialize
    @current = ElectricMotor::Current.new(nil)
  end

  attr_reader :current

  def connect(current)
    @current = current
  end

  def disconnect
    @current = ElectricMotor::Current.new(nil)
  end
end
