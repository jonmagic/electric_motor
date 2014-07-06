require "test_helper"

class CommutatorTest < MiniTest::Test
  def test_connects_to_coil
    commutator  = ElectricMotor::Commutator.new

    assert_equal [commutator.coil.side_a], commutator.side_a.connections
  end

  def test_makes_connections_based_on_angle
    left_brush  = ElectricMotor::Brush.new
    right_brush = ElectricMotor::Brush.new
    commutator  = ElectricMotor::Commutator.new \
      left_brush: left_brush, right_brush: right_brush

    commutator.calculate_connections
    assert_equal [commutator.side_a], left_brush.connections
    assert_equal [right_brush], commutator.side_b.connections
    commutator.armature.turn(180)
    assert_equal [commutator.side_b], left_brush.connections
    assert_equal [right_brush], commutator.side_a.connections
  end
end
