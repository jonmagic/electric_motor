class ElectricMotor::Commutator
  def initialize(options={})
    @armature = options[:armature] || ElectricMotor::Armature.new(commutator: self)
    @coil     = options[:coil] || ElectricMotor::Coil.new
    @left_brush  = options[:left_brush] || ElectricMotor::Brush.new
    @right_brush = options[:right_brush] || ElectricMotor::Brush.new
    @side_a   = Side.new
    @side_b   = Side.new
  end

  attr_reader :armature, :coil, :left_brush, :right_brush, :side_a, :side_b

  def connect_to_coil
    side_a.connect(coil.side_a)
    side_b.connect(coil.side_b)
    coil.side_a.connect(side_a)
    coil.side_b.connect(side_b)
  end

  def calculate_connections
    if armature.angle < 180
      left_brush.disconnect(side_)
      left_brush.connect(side_a)
      side_b.disconnect
      side_b.connect(right_brush)
    else
      left_brush.disconnect
      left_brush.connect(side_b)
      side_a.disconnect
    end
  end

  class Side
    include ElectricMotor::Conducts
  end
end
