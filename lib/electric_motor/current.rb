class ElectricMotor::Current
  def initialize(charge)
    @charge = charge
  end

  attr_reader :charge

  def positive?
    charge == :positive
  end

  def negative?
    charge == :negative
  end
end
