class ElectricMotor::Coil
  def initialize
    @side_a = Side.new
    @side_b = Side.new
    @side_a.connect(@side_b)
  end

  attr_reader :side_a, :side_b

  class Side
    include ElectricMotor::Conducts
  end
end
