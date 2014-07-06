class ElectricMotor::Armature
  include ElectricMotor::Rotates

  def initialize(options)
    @commutator = options[:commutator]
  end

  attr_reader :commutator

  def turn(degrees)
    super
    commutator.calculate_connections
  end
end
